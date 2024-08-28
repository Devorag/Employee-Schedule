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
