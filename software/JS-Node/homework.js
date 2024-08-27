function xcrypt(phrase, num) {
    let s = '';
    for (let i = 0; i < phrase.length; i++) {
        let encrypt = phrase.charCodeAt(i);
        s = s + String.fromCharCode(encrypt + num);
    }
    return s;
}

let x = xcrypt("hello world" ,5);
console.log(x);

let y = xcrypt(x, -5);
console.log(y);