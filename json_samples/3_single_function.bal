import ballerina.lang.system;

struct Employee {
    string name;
    int age;
    string address;
}

struct Person {
    string firstName;
    string lastName;
}

function main (string[] args) {
    json<Person> p = {firstName: "John",lastName: "Doe"};
    json<Employee> e = {name:"John Doe",age:20,address:"London"};
    
    Employee emp = {};
    string basePath = "$";

    transform {
        emp.name = p.firstName;
        emp.age = e.age;
        emp.address = e.address;
    }
    system:println(emp);
    
}
