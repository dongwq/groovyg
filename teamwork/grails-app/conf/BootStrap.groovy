import app.Message
import app.Role

class BootStrap {

    def init = { servletContext ->
		def adimnRole = new Role(name:"Admin").save()
		def userRole = new Role(name:"User").save()
		//def user1 = new User(username:"dong",password:"dongwq",title:"Mr", firstName:"dong", lastName:"Wq").save()
		//def user2 = new User(username:"dong2",password:"dongwq2",title:"Dr", firstName:"dong2", lastName:"Wq2").save()
		
		
		new Message( title:'The Knights Who Say Nee',
			detail:'They are after a shrubbery.' ).save()
			new Message( title:'The Black Knight',
			detail:"Just a flesh wound." ).save()
			new Message( title:'air speed velocity of a swallow',
			detail:"African or European?" ).save()
    }
    def destroy = {
    }
}
