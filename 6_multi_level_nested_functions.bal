import ballerina.lang.system;

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

function main (string[] args) {
    Person p = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    Employee e = {};

    transform {
        e.name = function1(function2(function3(function4(p.first_name))));
    }
    system:println(e.name);
}

function function1 (string s) (string) {
    return "1 " + s;
}

function function2 (string s) (string) {
    return "2 " + s;
}

function function3 (string s) (string) {
    return "3 " + s;
}

function function4 (string s) (string) {
    return "4 " + s;
}
