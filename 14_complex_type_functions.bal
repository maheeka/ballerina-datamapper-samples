import ballerina.lang.strings;

struct Person {
    string first_name;
    string last_name;
    int age;
    string city;
    string category;
}

struct User {
    string username;
    string location;
    string category;
}

function main (string[] args) {
    Person p = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    User u = {};
    string newCategory = "Person";

    transform {
        
        u = getUser(p);
    }
}

function getUser (Person p) (User) {
    User pu = {};
    return pu;
}
