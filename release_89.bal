import ballerina.lang.strings;

struct Person {
    string first_name;
    string last_name;
    int age;
    Address address;
}

struct Address {
    string number;
    string street;
    string city;
}

struct Employee {
    string name;
    string location;
    Address address;
    int category;
}

function getFirstName (string name) (string firstName) {
    string names = strings:split(name," ");
    return names[0];
}

function main (string[] args) {
    int category = 1;
    string abc;
    string ret;
    Person p = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    Employee e = {};


    transform {
        e.category = category;
        e.address.number = p.address.number;
       
        e.name = getFirstName(strings:toLowerCase(p.first_name));

        ret = strings:toLowerCase(abc);
        }
}
