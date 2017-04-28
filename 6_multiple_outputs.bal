 import ballerina.lang.strings;
import ballerina.lang.system;
const string delimeter = " ";
struct Person {
	string first_name;
	string last_name;
	int age;
	string city;
	
}
struct User {
	string username;
	string location;
	string city;
	
}
typemapper PersonToUser(Person y)(User) {
	User x = {};
	x.location = y.city;
	x.city = y.city;
	x.username = y.first_name;
	return x;
	
}
function getFirstName( string name, string delimiter)( string ) {
	string[] names = strings:split(name, delimiter);
	return names[0];
	
}
function main( string[] args) {
	Person p = {first_name:"Maheeka Pramodha", last_name:"Jayasuriya", age:27, city:"Kadawatha"
	}
	;
	User u = (User)p;
	system:println("Person details : " + p.first_name + "," + p.last_name + "," + p.age + "," + p.city);
	system:println("User details : " + u.username + "," + u.location);
	
}
