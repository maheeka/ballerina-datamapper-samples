 import ballerina.lang.system;
struct NumberStruct1 {
	int a;
	int b;
	int c;
	int d;
	
}
struct NumberStruct2 {
	int p;
	int q;
	int r;
	
}
typemapper Number1ToNumber2(NumberStruct1 y)(NumberStruct2) {
	NumberStruct2 x = {};
	x.r = y.c;
    int _temp = y.b * y.d;
    x.p = y.a + _temp;
    return x;
}
function addNum( int a, int b)( int ) {
	return a + b;
	
}
function multiplyNum( int a, int b)( int ) {
	return a * b;
	
}
function main( string[] args) {
	NumberStruct1 p = {a:1, b:2, c:3, d:4
	}
	;
	NumberStruct2 u = (NumberStruct2)p;
	system:println("Number 1 : " + p.a + "," + p.b + "," + p.c + "," + p.d);
	system:println("Number 2 : " + u.p + "," + u.q + "," + u.r);
	
}
