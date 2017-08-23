
struct Employee {
    string name;
    int age;
    string address;
}

struct Person {
    string firstName;
    string lastName;
    string age;
    string city;
}

struct AllTypes {
    string stringV;
    int intV;
    json jsonV;
    float floatV;
    boolean booleanV;
    any anyV;
}

struct StringType {
    string a;
    string b;
    string c;
    string d;
    string e;
    string f;
}

struct AnyType {
    any a;
    any b;
    any c;
    any d;
    any e;
    any f;
}

function main (string[] args) {
    Person p = {firstName: "John", lastName: "Doe", age: "30", city: "London"};
    Employee emp = {};
    AllTypes typesSource1 = {jsonV: {}};
    AllTypes typesSource2 = {jsonV: {}};
    StringType strTypesTarget1 = {};
    AnyType anyTypesTarget1 = {};
    AllTypes typesTarget1 = {jsonV: {}};
    AllTypes typesTarget2 = {jsonV: {}};
    string str1;
    any any1;

    transform {
        string tempVar16 = "";
        emp.name = p.firstName;
        emp.age, _ = <int> p.age;
        emp.address = p.city;
        anyTypesTarget1.a = typesSource1.stringV;
        anyTypesTarget1.b = typesSource1.intV;
        anyTypesTarget1.d = typesSource1.floatV;
        anyTypesTarget1.e = typesSource1.booleanV;
        anyTypesTarget1.f = typesSource1.anyV;
        strTypesTarget1.a = typesSource2.stringV;
        strTypesTarget1.b = <string> typesSource2.intV;
        strTypesTarget1.c, _ = (string) typesSource2.jsonV;
        strTypesTarget1.d = <string> typesSource2.floatV;
        strTypesTarget1.e = <string> typesSource2.booleanV;
        strTypesTarget1.f, _ = (string) typesSource2.anyV;
        str1, _ = (string) any1;
    }
}
