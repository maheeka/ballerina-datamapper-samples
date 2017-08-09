import ballerina.lang.system;

struct Person {
    string first_name;
    string last_name;
    int age;
    Address[] addresses;
}

struct Address {
    string number;
    string street;
    string city;
    string postalCode;
}

struct City {
    string name;
    string postalCode;
}

struct Employee {
    string name;
    string location;
    City[] cities;
}

function main (string[] args) {
    Person p = {first_name: "John",last_name: "Doe",age: 30,addresses: []};
    Employee e = {cities:[]};

    transform {
        e.name = p.first_name;
        e.cities = p.addresses.apply( function (Address address) returns (City) { 
        City c = { name : address.city , postalCode : address.postalCode}; 
        return c; 
    });
        
    }
    system:println(e);
    
}



