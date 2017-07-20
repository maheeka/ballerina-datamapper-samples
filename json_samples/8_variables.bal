import ballerina.lang.strings;

struct Employee {
    string name;
    int age;
    string address;
    string empType;
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
    string empTypeVar = "permanent";
    string cityVar;

    transform {
        e.address = p.city;
        e.name = strings:toUpperCase(p.first_name);
        e.age = p.age;
        e.empType = empTypeVar;
        cityVar = strings:toLowerCase(p.city);
    }
}
