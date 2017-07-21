
struct Employee {
    string name;
    int age;
    string address;
}

struct Person {
    string first_name;
    string last_name;
    int age;
    string city;
}

function testTransform (json<Person> p, json<Employee> e) {

    transform {
        e.age = p.age;
        e.name = p.first_name;
        e.address = p.city;
    }
}

function main(string[] args) {
    json<Person> p = {};
    json<Employee> e = {};
    testTransform(p, e);
}