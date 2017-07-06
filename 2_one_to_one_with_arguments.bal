
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

function testTransform (Employee e, Person p) {
    transform {
        p.first_name = e.name;
        p.age = e.age;
        p.city = e.address;
    }
}
