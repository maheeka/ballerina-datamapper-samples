 import ballerina.lang.strings;
import ballerina.lang.system;
struct Person {
	string first_name;
	string last_name;
	int age;
	string city;
	Address[] address;
	
}
struct Address {
	string number;
	string street;
	string city;
	
}
struct User {
	string username;
	string location;
	Address[] address;
	
}
typemapper PersonToUser(Person y)(User) {
	User x = {};
	y.addresses.forEach (Address z, i){
           x.addresses[i] = z.number + z.street + z.city;
    } 
	x.username = y.first_name;
	x.location = y.city;
	return x;
	
}
function addStr( string str1, string str2, string str3)( string ) {
	return str1 + str2 + str3;
	
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
