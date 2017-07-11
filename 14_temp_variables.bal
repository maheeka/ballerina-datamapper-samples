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
	string _temp = strings:toLowerCase(y.city);
	x.location = _temp;
	x.username = y.first_name + y.last_name +  _temp;
	return x;
	
}
function getFirstName( string name, string delimiter)( string ) {
	string[] names = strings:split(name, delimiter);
	return names[0];
	
}
function addStr( string str1, string str2, string str3)( string ) {
	return str1 + str2 + str3;
	
}
function main( string[] args) {
	Person p = {first_name:"Maheeka", last_name:"Jayasuriya", age:27, city:"Kadawatha"
	}
	;
	User u = (User)p;
	system:println("Person details : " + p.first_name + "," + p.last_name + "," + p.age + "," + p.city);
	system:println("User details : " + u.username + "," + u.location);
	
}
