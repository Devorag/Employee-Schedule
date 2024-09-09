"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var DeliveryMethod;
(function (DeliveryMethod) {
    DeliveryMethod["Periscope"] = "p";
    DeliveryMethod["TorpedoTube"] = "t";
    DeliveryMethod["Hatch"] = "h";
})(DeliveryMethod || (DeliveryMethod = {}));
;
var MenuItem;
(function (MenuItem) {
    MenuItem["SeaSalad"] = "Sea Salad";
    MenuItem["Burger"] = "Burger with Seaweed Fries";
    MenuItem["GalaxyShake"] = "Galaxy Shake";
})(MenuItem || (MenuItem = {}));
;
var FoodForm;
(function (FoodForm) {
    FoodForm["Regular"] = "r";
    FoodForm["Concentrate"] = "c";
})(FoodForm || (FoodForm = {}));
;
let orderNumber = 1000;
let orders = [];
function outputOrder(quantity, method, item, form, specialInstructions) {
    orderNumber++;
    orders.push([orderNumber, quantity, method, item, form, specialInstructions]);
    let output = `Qty = ${quantity}: [${method}] - ${item} (${form}) - SI: ${specialInstructions};`;
    console.log(output);
}
function outputEndOfDayOrders() {
    console.log("----------- End of Day Orders -----------");
    orders.forEach(order => {
        console.log(`${order[0]} - ${order[1]} - ${order[2]} - ${order[3]} - ${order[4]} - ${order[5]}`);
    });
}
outputOrder(3, DeliveryMethod.Hatch, MenuItem.Burger, FoodForm.Concentrate, "No onions, extra seaweed");
outputOrder(1, DeliveryMethod.Periscope, MenuItem.GalaxyShake, FoodForm.Regular, "Extra cold");
outputOrder(2, DeliveryMethod.TorpedoTube, MenuItem.SeaSalad, FoodForm.Regular, "No dressing");
outputEndOfDayOrders();
//# sourceMappingURL=5%20hw.js.map