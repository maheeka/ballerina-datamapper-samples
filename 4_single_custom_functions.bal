import ballerina.lang.strings;

struct Person {
    string first_name;
    string last_name;
    int age;
    string city;
}

struct User {
    string username;
    string location;
    string category;
}

function main (string[] args) {
    Person p = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    User u = {};

    transform {
        u.username = p.first_name;
        u.category = getCategory(p.age);
        u.location = p.city;
    }
}

function getCategory (int age) (string) {
    if (age> 50) {
        return "senior_citizen";
    } else {
        return "other";
    }
}
