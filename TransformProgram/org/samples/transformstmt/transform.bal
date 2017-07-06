package org.samples.transformstmt;

import org.samples.structdefs;
import org.samples.structdefsmore;
import ballerina.lang.strings;

struct EmployeeThis {
    string name;
    int age;
    structdefsmore:Address address;
}

struct PersonThis {
    string first_name;
    string last_name;
    int age;
    AddressThis address;
}

struct AddressThis {
    string number;
    string street;
    string city;
}

function main (string[] args) {
    // from a different package
    structdefs:Person pImport = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    structdefs:Employee eImport = {};
    
    // from this bal
    PersonThis pThis = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    EmployeeThis eThis = {};
    
    //from a different bal in same package
    Person pPkg = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    Employee ePkg = {};

    transform {
        eImport.name = pThis.first_name;
        ePkg.age = pThis.age;
        eThis.name = pPkg.first_name;
        eImport.age = pImport.age;
        eThis.address.street = pThis.address.street;
        eThis.age = pPkg.age;
        eImport.address.citycomplex = strings:toLowerCase(pImport.city);
        ePkg.name = strings:toUpperCase(pThis.last_name);
    }

    }

function FunctionThis () {
    int i = 0;
}
