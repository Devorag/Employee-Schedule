const divideIt = function (x, y) {return x/y}
const MultiplyIt = (x,y) => x * y

console.log(doMath(AddIt,9,10));
console.log(doMath(MultiplyIt,9,10));
console.log(doMath(divideIt,9000,10));

let n = doMath((x,y) => x - y,900,90);
console.log(n);

function doMath(f, x, y) {
    return f(x,y);
}

function AddIt(x, y) {
    return x + y;
}

