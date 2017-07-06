import ballerina.lang.strings;

struct Person {
    string name;
    int age;
    string city;
}

struct User {
    string username;
    string location;
    int age;
}

function getFirstName (string name) (string firstName) {
    string names = strings:split(name," ");
    return names[0];
}

function main (string[] args) {
    Person p = {name: "John Allen",age: 30,city: "London"};
    User u = {};

    transform {
        u.username = strings:toUpperCase(getFirstName(p.name));
        u.location = strings:toLowerCase(strings:toUpperCase(p.city));
        u.age = p.age;
    }
}
