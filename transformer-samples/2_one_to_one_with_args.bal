struct Employee {  
    string name;
    int age;
    string address; 
}

struct Person {
    string firstName;
    string lastName;
    int age;
    string address;
}

function main (string[] args) {
    Person p = {firstName: "John", lastName: "Doe", age: 30, address: "221B, Baker St, London"};
    Employee e = <Employee, Foo(5)> p;
    println(e);
}

transformer <Person p, Employee e> Foo(int age){
    e.name = p.firstName;
    e.age = age;
    e.address = p.address;
}