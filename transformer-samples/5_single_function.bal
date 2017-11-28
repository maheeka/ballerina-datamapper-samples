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
    Employee e = <Employee> p;      
}transformer <Person p , Employee e
>{
    e.age = p.age;
    e.address = p.address;
    e.name = p.firstName.toUpperCase();}

