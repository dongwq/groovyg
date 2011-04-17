package app

class HomeController {

    def index = { 
		def messages = Message.listOrderByLastUpdated(max:10, order:"desc");
		
		return [messages:messages]	
	}
	def login = {
		
	}
	
	def logon = {
		User user = new User(params.user)
		// println user.dump()
		if(true)
		{
			session.user = user;
			redirect(action:"index");
		}
	}
	
	def logout = {
		User user = new User(params)
		if(true)
		{
			session.user = null;
			redirect(action:"login");
		}
	}
}
