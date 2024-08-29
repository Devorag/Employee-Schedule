

let doMath = AddIt;

let n = doMath(10,9);

console.log(n);

doMath = MultiplyIt;
console.log(doMath(10,9));

function AddIt(x, y) {
    return x + y;
}

function MultiplyIt(x, y) {
    return x * y;
}
