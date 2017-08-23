
import ballerina.lang.strings;

struct Employee {
    string name;
    int age;
    string address;
}

struct Person {
    string firstName;
    string lastName;
    int age;
    string city;
}

function main (string[] args) {
    Person p = {firstName: "John",lastName: "Doe",age: 30,city: "London"};
    Employee e = {};


    transform {
        e.name = p.firstName;
        e.age, _ = <int> p.city;
        }
    }