
import ballerina.lang.strings;

struct Employee {
    string name;
    int age;
    string address;
}

struct Person {
    string firstName;
    string lastName;
    string age;
    string city;
}

struct AllTypes {
    string stringV;
    int intV;
    json jsonV;
    float floatV;
    boolean booleanV;
    any anyV;
}

struct StringType {
    string a;
    string b;
    string c;
    string d;
    string e;
    string f;
}

struct AnyType {
    any a;
    any b;
    any c;
    any d;
    any e;
    any f;
}

function main (string[] args) {
    // Person p = {firstName: "John", lastName: "Doe", age: "30", city: "London"};
    // Employee emp = {};
    // AllTypes typesSource1 = {jsonV: {}};
    // AllTypes typesSource2 = {jsonV: {}};
    // StringType strTypesTarget1 = {};
    // AnyType anyTypesTarget1 = {};
    // AllTypes typesTarget1 = {jsonV: {}};
    // AllTypes typesTarget2 = {jsonV: {}};
    // string str1;
    // any any1;
    string x;
    string y;
    any category = "FF";
    any catX = "ss";
    transform {

        
        }
}

function anyFunc(any t) (string) {
    var temp,_ = (string) t;
    return temp;
}

