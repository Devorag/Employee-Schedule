/*
You are writing softare to transmit data over a network that has the following rules:
a) First trasmit the number of chars in the string to be transmitted followed by :
b) The data has to be sent in packets of no more than 3 chars at a time. Each char should be separated by a -
c) After every packet transmit ---
d) when finished transmit :end
d) Beware of undefined, null, and NaN that may be passed to your system for transmitting. If you receive that then transmit "INVALID".

Write a JS function that take a string and transmits the data following the specified rules.
In place of sending the data on the network console.log it.
*/

let s = "123456798230987215328973"
transmit(s);
transmit(undefined)
transmit(null)
transmit(NaN)

function transmit(val) {
    if(val == null || Number.isNaN(val)) {
        console.log("INVALID")
        return;
    }
    // turn val into an array
    // get the length of array and transmit
    //while loop until the array is empty 
    // take the first 3 elements and transmit them according to the rules
    let a = val.split("");
    console.log(`${a.length}:`);
    while(a.length > 0) {
        let a2 = a.splice(0,3);
        let s = a2.join("-");
        console.log(s);
        console.log("---");
        if(a.length == 0){
            console.log(":end");
        }
    }


}
