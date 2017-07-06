
struct Person {
    string first_name;
    string last_name;
    int age;
    string city;
}

struct User {
    string username;
    string location;
    string ageCode;
    string category;
}

function main (string[] args) {
    Person p = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    User u = {};
    int y;

    transform {
        u.username= p.first_name;
        u.category,u.ageCode= getCategory(p.age);
        }
}

function getCategory (int age, int y) (string x, int y) {
    if (age> 50) {
        return "senior_citizen",1;
    } else {
        return "other",0;
    }
}

function testcat (int age, int x) (string y) {
    if (age> 50) {
        return "senior_citizen",1;
    } else {
        return "other",0;
    }
}
