package app

class Role {
	String name;
	
	static hasMany = [users:User]
    static constraints = {
		name(blank:false, size:1..20)
    }
	
	String toString()
	{
		return name;
	}
}
