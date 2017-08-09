import ballerina.lang.strings;

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
    Person p = {first_name: "John",last_name: "Doe",age: 30,address: {phoneNumber: {}}};
    Employee e = {address: {phoneNumber: {}}};

    transform {
        e.name = p.first_name;
        e.location = p.address.city;
        e.address.number = p.address.number;
        e.address.street = strings:toUpperCase(p.address.street);
        e.address.phoneNumber.areaCode = p.address.city;
        e.address.phoneNumber.phoneNumber = p.address.phoneNumber.phoneNumber;
    }
}
