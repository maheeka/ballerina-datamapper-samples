

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
    json<Person> p = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    json<User> u = {};

    transform {
        u.username = p.first_name;  
        u.location = p.city;
        u.category = getCategory(p.age);
    }
}

function getCategory (json age) (json) {
    var ageInt,_ = (int) age;
    if (ageInt> 50) {
        return "senior_citizen";
    } else {
        return "other";
    }
}
