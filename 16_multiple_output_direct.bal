
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

function main(string[] args) {
    Employee e = {name:"John",age:30,address:"London"};
    Person p = {};

    transform {
        p.first_name,p.last_name = e.name;
        p.age = e.age;
        p.city = e.name;
    }}
