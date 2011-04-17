package app

class MessageController
{
	def index={
		redirect action:"create"
	}
	def create =
	{
		[message:new Message()]
	}

	def save =
	{
		def message = new Message(params);
		if( !message.hasErrors() && message.save())
		{
			flash.message = g.message( code:"message.save.success", args:[message.title], default:"message '$message.title' have been added!")
			redirect(action:"create");
		}
		else{
			render(view:"create", model:[message:message])
		}
	}
	
	def list={
		[]	
	}
}
