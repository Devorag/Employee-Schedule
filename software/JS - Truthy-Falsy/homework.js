//LB: Great job! The function works, but the code could be more concise by combining the logic for both cases into a single assignment. Please try to modify your code. Optional to resubmit.

let openlist = "<ul>";
let closelist = "</ul>"
let searchresults;
let e;

searchresults = "<li>red</li><li>green</li><li>blue</li>"
e = searchresults || "<h2>No Results</h2>";
openlist = searchresults && openlist;
closelist = searchresults && closelist;

e = openlist + e + closelist;

console.log(e);

searchresults = "";
e = searchresults || "<h2>No Results</h2>";
openlist = searchresults && openlist;
closelist = searchresults && closelist;

e = openlist + e + closelist;

console.log(e);
