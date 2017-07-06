package org.samples.structdefs;


import org.samples.structdefsmore;

struct Employee {
    string name;
    int age;
    structdefsmore:Address address;
}

struct Person {
    string first_name;
    string last_name;
    int age;
    string city;
}

function FunctionOne (int x) {
    x = 5;
}
