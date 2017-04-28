import ballerina.lang.system;
function main(string[] args){
    int i = 0;
    while(i<10){
        system:println("-");
        int _t = 25 + i;
        system:println(_t);
        i = i + 1;
    }

}