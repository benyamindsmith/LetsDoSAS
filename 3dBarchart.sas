/*
Make a 3d bar chart
*/
proc gchart data=myData;
hbar3d sex;
run;
