import ballerina.lang.system;
import ballerina.lang.jsons;

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
    json<Person> p = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    json<Employee> e = {};

    transform {
        e.name = function3(function2(function1(p.first_name)));
        }
    system:println(e.name);
}

function function1 (json s) (json) {
    return "1 " + jsons:getString(s,"$");
}

function function2 (json s) (json) {
    return "2 " + jsons:getString(s,"$");
}

function function3 (json s) (json) {
    return "3 " + jsons:getString(s,"$");
}

function function4 (json s) (json) {
    return "4 " + jsons:getString(s,"$");
}
