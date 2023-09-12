// resize.js

// Function to handle window resize
function handleResize() {
    const width = window.innerWidth;
    const height = window.innerHeight;
    let bpoint = "xs";
    let color = "";

    switch (true) {
        case width >= 1400:
            bpoint = "xxl";
            color = "red"; // Set the color for xxl breakpoint
            break;
        case width >= 1200:
            bpoint = "xl";
            color = "orange"; // Set the color for xl breakpoint
            break;
        case width >= 992:
            bpoint = "lg";
            color = "green"; // Set the color for lg breakpoint
            break;
        case width >= 768:
            bpoint = "md";
            color = "blue"; // Set the color for md breakpoint
            break;
        case width >= 576:
            bpoint = "sm";
            color = "purple"; // Set the color for sm breakpoint
            break;
    }

    const msgElement = document.getElementById("msg");
    msgElement.innerHTML = `${bpoint} Width = ${width} Height = ${height}.`;
    msgElement.style.color = color; // Change the text color based on the breakpoint
}

// Add event listener for window resize
window.addEventListener("resize", handleResize);

// Add event listener for page load
document.addEventListener("DOMContentLoaded", handleResize);
