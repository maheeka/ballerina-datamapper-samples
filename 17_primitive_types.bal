 import ballerina.lang.system;
struct Person {
	string first_name;
	string last_name;
	int age;
	string city;
	
}

typemapper PersonToString(Person y)(string) {
    string x;
	x = y.first_name +  y.last_name;
	return x;
	
}
function greaterThan( int num, int num2)( boolean ) {
	if (num > num2) {
		return true ;
		
	}
	else {
	} return false ;
	
}
function addStr( string str1, string str2)( string ) {
	return str1 + str2;
	
}
