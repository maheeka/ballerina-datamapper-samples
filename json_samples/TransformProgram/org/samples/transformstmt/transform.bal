package org.samples.transformstmt;

import org.samples.structdefs;
import org.samples.structdefsmore;
import ballerina.lang.strings;
import ballerina.lang.system;

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
    json<structdefs:Person> pImport = {first_name: "John",last_name: "Doe",age: 30,city: "London"};
    json<structdefs:Employee> eImport = {addressComplex:{}};
    
    
    // from this bal
    json<PersonThis> pThis = {first_name: "John",last_name: "Doe",age: 30,address:{number:"123",street:"York Street",city: "London"}};
    json<EmployeeThis> eThis = {address:{}};
    
    //from a different bal in same package
    json<Person> pPkg = {first_name: "John",last_name: "Doe",age: 30};
    json<Employee> ePkg = {};




    transform {
        eImport.name = pThis.first_name;
        ePkg.age = pThis.age;
        eThis.name = pPkg.first_name;
        eImport.age = pImport.age;
        eThis.address.street = pThis.address.street;
        eThis.age = pPkg.age;
        eImport.addressComplex.citycomplex = strings:toLowerCase(pImport.city);
        ePkg.name = strings:toUpperCase(pThis.last_name);
    }
    
    system:println(eImport.addressComplex.citycomplex + " " + ePkg.age + " " + eThis.address.street);

    }

function FunctionThis () {
    int i = 0;
}
