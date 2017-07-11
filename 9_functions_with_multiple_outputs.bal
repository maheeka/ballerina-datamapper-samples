
struct Person {
    string first_name;
    string last_name;
    int age;
    string city;
}

struct User {
    string username;
    string location;
    int ageCode;
    string category;
}

function main (string[] args) {
    Person p = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    User u = {};

    transform {
        u.username = p.first_name;
        u.ageCode,u.location = getCategory();
    }
}

function getCategory (int age) (string x, int y) {
    if (age> 50) {
        return "senior_citizen",1;
    } else {
        return "other",0;
    }
}
