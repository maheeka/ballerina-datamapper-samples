 import ballerina.lang.strings;
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
	
}
typemapper PersonToUser(Person y)(User) {
	User x = {};
	x.location = y.city;
	x.username = strings:toUpperCase(getFirstName(y.first_name));
	return x;
	
}
function getFirstName( string name)( string ) {
	string[] names = strings:split(name, " ");
	return names[0];
	
}
function main( string[] args) {
	Person p = {};
	p.first_name = "Maheeka Pramodha";
	p.last_name = "Jayasuriya";
	p.age = 27;
	p.city = "Kadawatha";
	User u = (User)p;
	system:println("Person details : " + p.first_name + "," + p.last_name + "," + p.age + "," + p.city);
	system:println("User details : " + u.username + "," + u.location);
	
}
