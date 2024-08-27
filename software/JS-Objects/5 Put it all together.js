/*
You are working in a toy factory that produces one toy called widget, that can have multiple components.
The widget's props are order number and item sequence number in the order.
The order number and item sequence can be specified upon initialization.
The components that can be added to the widget are Video Game, Board Game, and Word Game, use your imagination for props for each, you can code these as object literal
We have an order for 10 widgets with Video and Word. 
- Order number 344, don't forget to initialize with order and item sequence number
- Put 10 widgets in an array using a loop.
- Add Video and Word to each of them.
We got another order similar to 344, but split in half, 5 items should also have Board Game
--make a copy of order 344, increment the order number 
--add Board game to the last five items
Output a description of all orders
*/

function Widget(orderNumber, sequenceNumber) {
    return{orderNumber, sequenceNumber }
}
const videogame = {videoController: "JoyStick"};
const boardgame = {boardsize:100};
const wordgame = {wordLanguage: "English"};
const widgets = [];
for(let i = 1; i < 11; i++) {
    widgets.push(new Widget(344,i))
}

const components = [videogame, boardgame];
widgets.forEach(w => Object.assign(w,...components));
widgets2 = [];
widgets.forEach(w => widgets2.push({...w}));
widgets2.forEach(w => w.orderNumber++);
widgets2.slice(5,10).forEach(w => Object.assign(w,wordgame));
widgets.forEach(w => console.log(w)) 
console.log("---------");
widgets2.forEach(w => console.log(w));