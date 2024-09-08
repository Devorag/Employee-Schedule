"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var ReportType;
(function (ReportType) {
    ReportType["weather"] = "w";
    ReportType["obstacle"] = "o";
    ReportType["funfact"] = "f";
})(ReportType || (ReportType = {}));
let sequence = 0;
let blackbox = [];
outputToConsole(ReportType.weather, 8);
outputToConsole(ReportType.obstacle, "tornado");
outputToConsole(ReportType.funfact, "octopus has 8 legs");
OutputBlackBox();
function outputToConsole(rtype, report) {
    let s = "";
    sequence++;
    blackbox.push([sequence, rtype, report]);
    s = sequence + " ";
    switch (rtype) {
        case ReportType.weather:
            s += `****W**** ${report};`;
            break;
        case ReportType.obstacle:
            s += `obstacle !!!!!!!!! ${report}`;
            break;
        case ReportType.funfact:
            s += `:) ${report} :)`;
            break;
    }
    console.log(s);
}
function OutputBlackBox() {
    console.log("-----------BlackBox");
    blackbox.forEach(r => console.log(r[0], r[1], r[2]));
}
//# sourceMappingURL=4%20put%20it%20all%20together.js.map