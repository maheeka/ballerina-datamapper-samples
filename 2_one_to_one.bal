 struct Employee {
	string name;
	int age;
	string address;
	
}
struct Person {
	string first_name;
	string last_name;
	int age;
	string city;
	
}
typemapper PersonToEmployee(Person y)(Employee) {
	Employee x = {};
	x.address = y.city;
	x.name = y.first_name;
	x.age = y.age;
	return x;
	
}
