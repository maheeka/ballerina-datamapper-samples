
import ballerina.lang.strings;

string country = "LK";
struct Person {
    string name;
    string city;
    int age;
    string country;
}

struct Employee {
    string name;
    string address;
    int age;
}

function Function1 () {
    Employee e = {};
    Person p = {};

    transform {
        p.name = e.name;
        p.country = country;
        var _temp1 = strings:toUpperCase(e.address);
    }
}
