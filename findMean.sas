/* 
Returns Mean, Std, min and max
*/
proc means data=myData;
vars age;
run;

/* 
Get Standard error only
*/
proc means data=myData stderr;
vars age;
run;
