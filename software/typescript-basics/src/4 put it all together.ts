enum ReportType{weather = 'w', obstacle = 'o', funfact = 'f'}
let sequence = 0;
let blackbox:[number, ReportType, any][] = [];

outputToConsole(ReportType.weather, 8);
outputToConsole(ReportType.obstacle, "tornado");
outputToConsole(ReportType.funfact, "octopus has 8 legs");
OutputBlackBox(); 

function outputToConsole(rtype: ReportType, report: any):void {
    let s = "";
    sequence++;
    blackbox.push([sequence, rtype, report]);
    s = sequence + " ";
    switch(rtype) {
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

export{};
/*
You are writing software for a submarine console. 
Your job is to write a function that receives different types of reports about the enironment surrounding the submarine.
Report types are weather, obstacle, fun-fact.
The reports come in from different instruments and can string or numeric.
The reports will come in with their report type indicated with a single letter, and that is the first letter of the type.
Each report type has to be output in a differt format.
    weather: ****W**** report;
    obstacle !!!!!!!!! report;
    fun-fact :) report :)
You also need to prefix the report with the sequence number of the report.
For the submarine's black box You need to keep a log of all the reports and write a function that outputs that log upon demand.
    tech note: each report should be in a tuple (sequnce, report type, report), and keep an array of those tuples, for output loop through the array
*/

