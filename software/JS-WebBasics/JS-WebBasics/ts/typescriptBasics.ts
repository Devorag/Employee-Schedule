namespace tbassics {
    const msg: HTMLElement = document.querySelector("#msg");
    document.querySelector("#btn1").addEventListener("click", displayMilisecond);
    document.querySelector("#btndivs").addEventListener("click", changeDivs);
    document.querySelector("body").addEventListener("mousemove", drawOnScreen);
    document.querySelector("body").addEventListener("keypress", drawOnScreen);
    const divs = document.querySelectorAll("div");
    const rnd = (min = 0, max = 0) => Math.floor(Math.random() * (Math.floor(max) - Math.ceil(min) + 1)) + Math.ceil(min);

    function displayMilisecond() {
        let color: string = "";
        msg.innerHTML = new Date().getMilliseconds().toString();
        if ((document.querySelector("#optblue") as HTMLInputElement).checked) {
            color = (document.querySelector("#optblue") as HTMLInputElement).value;
        }
        else {
            color = (document.querySelector("#optred") as HTMLInputElement).value;
        }
        msg.style.backgroundColor = color;
    }

    function changeDivs() {
        divs.forEach(d => d.style.backgroundColor = "silver");
    }

    function drawOnScreen(e: MouseEvent | KeyboardEvent) { //can also write unknown
        const d = document.createElement("div");
        let x = 0;
        let y = 0;
        let ch = "*";
        if (e instanceof MouseEvent) {
            x = e.x + 1;
            y = e.y + 1;
        }
        else if (e instanceof KeyboardEvent) {
            ch = e.key;
            x = rnd(50, 200);
            y = rnd(50, 200);
        }
        d.innerHTML = ch;
        d.style.position = "absolute";
        d.style.top = y + "px";
        d.style.left = x + "px";
        document.querySelector("body").appendChild(d);
    }
}