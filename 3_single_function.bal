import ballerina.lang.strings;

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
        e.address = strings:toLowerCase(p.city);
        e.name = strings:toLowerCase(p.first_name);
        e.age = p.age;
    }
}
