
let b = "----------------";
function calculatePrice(itemname, price, f) {
    const newprice = f(price);

    const description = Description(f);

    console.log(`Base Price for ${itemname} is ${price} changed to ${newprice}. Calculated with ${description}.`);
}

function Description(f) {
    return f.name.split(/(?=[A-Z])/).join('_').toLowerCase() || f.toString();
  }

// Example 1 : 
//AS Instructions said that function names should be multiple words joined by underscores, fix the naming for all 3.
function discountBasedOnName(price) {
//AS Tip: It would be nice to convert all of this into one line of code.
    const itemnameLowerCase = itemname.toLowerCase();
    const hasAorE = itemnameLowerCase.includes('a') || itemnameLowerCase.includes('e');
    return (hasAorE && price * .9) || price * .8
    
}

const randomSurcharge = function(price) {
//AS Same as above comment
    const randomValue = Math.floor(Math.random() * 100);
    const result = price + randomValue;
    return result;
}
// Example 3 : 
const fiftyPercentDiscount = price => price * .5;
//AS Take out the variable itemname and put toy directly into the function like the others.
let itemname = "Toy";
calculatePrice(itemname, 100, discountBasedOnName);
console.log(b);
calculatePrice("Bed", 100, discountBasedOnName);
console.log(b);
calculatePrice("Camera",350, randomSurcharge);
console.log(b);
calculatePrice("Book", 50, fiftyPercentDiscount);
console.log(b); 