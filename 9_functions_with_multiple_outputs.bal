
struct Person {
    string first_name;
    string last_name;
    int age;
    string city;
    string state;
}

struct User {
    string username;
    string geoCode;
    int ageCode;
    string category;
}

function main (string[] args) {
    Person p = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    User u = {};

    transform {
        u.username = p.first_name;
        u.category,u.ageCode = getCategory(p.age);
        u.geoCode = getGeoCode(p.state,p.city);
        }
}

function getCategory (int age) (string category, int ageCode) {
    if (age> 50) {
        return "senior_citizen",1;
    } else {
        return "other",0;
    }
}

function getGeoCode (string state, string city) (string geoCode) {
    return state + "-" + city;
}
