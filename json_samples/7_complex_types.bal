import ballerina.lang.jsons;

struct Person {
    string first_name;
    string last_name;
    int age;
    Address address;
}

struct Address {
    string number;
    string street;
    string city;
    PhoneNumber phoneNumber;
}

struct PhoneNumber {
    string areaCode;
    string phoneNumber;
}

struct Employee {
    string name;
    string location;
    Address address;
}

function main (string[] args) {
    json<Person> p = {first_name: "John",last_name: "Doe",age: 30,address: {phoneNumber: {}, street:"York St"}};
    json<Employee> e = {address: {phoneNumber: {}}};
    string basePath = "$";

    transform {
        e.name = p.first_name;
        e.location = p.address.city;
        e.address.number = p.address.number;
        e.address.phoneNumber.areaCode = p.address.city;
        e.address.street = jsons:getJson(p.address.street,basePath);
    }
}
