package app

class User {

	String username;
	String password;
	String title;
	String firstName;
	String lastName;
	
	Role role;
	
	Date dateCreated;
	Date lastUpdated;
	
    static constraints = {
		username(blank:false, size:4..20, unique:true)
		title(blank:false, inList:["", "Dr", "Mr", "Mrs", "Miss"])
		firstName(blank:false, size:1..20)
		lastName(blank:false, size:1..30)
		dateCreated(nullable:true)
		lastUpdated(nullable:true)
		role()
		password(blank:false, size:6..20, passowrd:true)
    }
}
