import ballerina.lang.strings;

struct Employee {
    string name;
    int age;
    string address;
    string test;
}

struct Person {
    string firstName;
    string lastName;
    int age;
    string city;
}

function main (string[] args) {
    Person p = {firstName: "John", lastName: "Doe", age: 30, city: "London"};
    Employee e = {};

    transform {
        string prefix = "Ms.";
        e.address = p.city;
        e.name = getNameWithPrefix(prefix, p.firstName);
        e.age = p.age;
    }
}

function getNameWithPrefix(string prefix, string name)(string){
    return prefix + name;
}
