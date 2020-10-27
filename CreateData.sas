/*
Define Data set
*/
data myData;
/*
Define column names

Be sure to put $ at end of column you want to have as character data
*/
input pid age sex$;
/*
Define data in rows
*/
datalines;
100 85 Male
200 74 Male
300 54 Female
;

/* 
Terminate SAS statement with Run
*/
run;

proc print data=myData;

run;
