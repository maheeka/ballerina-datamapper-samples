 import ballerina.lang.system;
struct Person {
	string first_name;
	string last_name;
	int age;
	string city;
	
}
struct User {
	string username;
	string location;
	string category;
	
}
typemapper PersonToUser(Person y)(User) {
	User x = {};
	if (y.age > 50) {
		x.category = "senior_citizen";
		
	}
	else {
		x.category = "other";
		
	}
	x.location = y.city;
	x.username = y.first_name;
	return x;
	
}
function greaterThan( int num, int num2)( boolean ) {
	if (num > num2) {
		return true ;
		
	}
	else {
		} return false ;
	
}
function ifElse(condition bool, then x, elsé x)( string ) {
	if (age > 50) {
		return "senior_citizen", "gold";
		
	}
	else {
		return "other", "silver";
		
	}
	
}
function getCitizenCategory( int age)( string ) {
	if (age > 50) {
		return "senior_citizen", "gold";
		
	}
	else {
		return "other", "silver";
		
	}
	
}
function main( string[] args) {
	Person p = {};
	p.first_name = "Maheeka";
	p.last_name = "Jayasuriya";
	p.age = 60;
	p.city = "Kadawatha";
	User u = (User)p;
	system:println("Person details : " + p.first_name + "," + p.last_name + "," + p.age + "," + p.city);
	system:println("User details : " + u.username + "," + u.location + "," + u.category);
	
}
