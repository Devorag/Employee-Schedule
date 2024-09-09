enum DeliveryMethod {Periscope = "p", TorpedoTube = "t", Hatch = "h"};
enum MenuItem {SeaSalad = "Sea Salad", Burger = "Burger with Seaweed Fries", GalaxyShake = "Galaxy Shake"};
enum FoodForm {Regular = "r", Concentrate = "c"};

type Order = [number, number, DeliveryMethod, MenuItem, FoodForm, string];

let orderNumber = 999;
let orders: Order[] = [];

function outputOrder(quantity: number, method: DeliveryMethod, item: MenuItem, form: FoodForm, specialInstructions: string): void {
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

export {};