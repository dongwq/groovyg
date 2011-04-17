package app

class LoginFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
             /*   if(actionName != "login" && !session.user)
				{
					redirect(controller:"home", action:"login")
				}
				*/
            }
            after = {
                
            }
            afterView = {
                
            }
        }
    }
    
}
