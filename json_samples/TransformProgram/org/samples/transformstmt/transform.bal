package org.samples.transformstmt;

import org.samples.structdefs;
import org.samples.structdefsmore;
import ballerina.lang.system;
import ballerina.lang.jsons;

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
    json<structdefs:Employee> eImport = {};
    // from this bal
    json<PersonThis> pThis = {first_name: "John",last_name: "Doe",age: 30};
    json<EmployeeThis> eThis = {};
    //from a different bal in same package
    json<Person> pPkg = {first_name: "John",last_name: "Doe",age: 30};
    json<Employee> ePkg = {};
    
    transform {
        eImport.name = pThis.first_name;
        ePkg.age = pThis.age;
        eThis.name = pPkg.first_name;
        eImport.age = pImport.age;
        // eThis.address.street = pThis.address.street;
        eThis.age = pPkg.age;
        // eImport.addressComplex.citycomplex = pImport.city;
        ePkg.name = pThis.last_name;
    }
    // system:println(eImport.addressComplex.citycomplex);
    system:println(ePkg.age);
    // system:println(eThis.address.street);
}

function testTransform (json<structdefs:Person> pImport, json<structdefs:Employee> eImport, json<PersonThis> pThis, json<EmployeeThis> eThis, json<Person> pPkg, json<Employee> ePkg) {

    string basePath = "$";
    transform {
        eImport.name = pThis.first_name;
        ePkg.age = pThis.age;
        eThis.name = pPkg.first_name;
        eImport.age = pImport.age;
        eThis.address.street = pThis.address.street;
        eThis.age = pPkg.age;
        eImport.addressComplex.citycomplex = pImport.city;
        //ePkg.name = strings:toUpperCase(pThis.last_name);
        eThis.address.citycomplex = jsons:getJson(pThis.address.city,basePath);
    }
    system:println(eImport.addressComplex.citycomplex);
    system:println(ePkg.age);
    system:println(eThis.address.street);
}


function FunctionThis () {
    int i = 0;
}
