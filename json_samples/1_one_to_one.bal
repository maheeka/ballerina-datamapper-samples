

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

function main (string[] args) {
    
    json<Person> p = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    json<Employee> e = {};

    transform {
        e.name = p.first_name;
        e.age = p.age;
        e.address = p.city;
    }
    
}
