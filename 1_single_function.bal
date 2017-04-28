import ballerina.lang.strings;
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
	x.username = strings:toLowerCase(y.first_name);
	x.location = y.city;
	return x;
	
}
