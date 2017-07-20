import ballerina.lang.jsons;
import ballerina.lang.system;

struct Employee {
    string name;
    int age;
    string address;
}

struct Person {
    string first_name;
    string last_name;
}

function main (string[] args) {
    json<Person> p = {first_name: "John",last_name: "Doe"};
    json<Employee> e = {name:"John Doe",age:20,address:"London"};
    
    Employee emp = {};
    string basePath = "$";

    transform {
        emp.name = jsons:getString(p.first_name,basePath);
        emp.age = jsons:getInt(e.age,basePath);
        emp.address = jsons:getString(e.address,basePath);
    }
    system:println(emp);
    
}
