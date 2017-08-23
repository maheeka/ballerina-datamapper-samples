import ballerina.net.http;
import ballerina.lang.messages;
import ballerina.lang.errors;
import ballerina.lang.system;

@http:configuration {
    basePath: "/test"
}
service<http> Service1 {

    @http:resourceConfig {
        methods:["POST"],
        path:"/"
    }
    resource Resource1 (message m) {
        json j = messages:getJsonPayload(m);
        Person p;
        errors:TypeConversionError err;
        p, err = <Person> j;
        if (err != null) {
            system:println(err);
        }
        string city = "London";
        json     <Person> response = {};

        transform {
            response.name = p.name;
            response.age = p.age;
            response.city = city;
        }
        messages:setJsonPayload(m,response);
        reply m;
    }
}

struct Person {
    string name;
    int age;
    string city;
}
