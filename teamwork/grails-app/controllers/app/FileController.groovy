package app

import org.springframework.web.multipart.MultipartFile;

class FileController
{

	def create =
	{
		return [file:new File()]
	}

	def save =
	{
		def file = new File(params)

		MultipartFile f = request.getFile("data");
		file.size = f.getSize() / 1024
		file.extension = exttractExtension(f)
		
		if( file.save() ){
			flash.message = g.message(code:"mmm", default:"file $file.name is uploaded")
			redirect(controller:"home", action:"index")
		}
		else{
			redirect(action:"create", model:[file:file])
		}
	}

	def exttractExtension(MultipartFile f)
	{
		String filename = f.originalFilename;
		return filename.substring( filename.lastIndexOf(".")+ 1);
	}

	def download =
	{
	}
}
