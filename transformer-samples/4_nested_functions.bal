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
    string[] names = name.split(" ");
    return names[0];
}

function main (string[] args) {
    Person p = {name: "John Allen",age: 30,city: "London"};
    User u = <User> p;

}
transformer <Person p, User u> {
    u.age = p.age;
    u.username = getFirstName(p.name).toLowerCase();
}
