import ballerina.lang.jsons;

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
    json<Person> p = {first_name: "John",last_name: "Doe",age: 30,city: "New York", state:"New York"};
    json<User> u = {};

    transform {
        u.username = p.first_name;
        u.category,u.ageCode = getCategory(p.age);
        u.geoCode = getGeoCode(p.state,p.city);
        }
}

function getCategory (json age) (json category, json ageCode) {
    var ageInt,_ = (int) age;
    if (ageInt > 50) {
        return "senior_citizen",1;
    } else {
        return "other",0;
    }
}

function getGeoCode (json state, json city) (json geoCode) {
    return jsons:getString(state,"$") + "-" + jsons:getString(city,"$");
}
