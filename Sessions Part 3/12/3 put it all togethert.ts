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

