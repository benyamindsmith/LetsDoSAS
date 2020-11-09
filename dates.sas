/* Working with date fromatted data  */

data medi;
input id age jdate; /*jdate= date joined*/
/* `informat` allows us to READ date values.
    ddmmyy(..)= READ as day-month-year
    (..)10.= accept up to 10 characters*/
informat jdate ddmmyy10.;
/* format all datas to DISPLAY them as date values  */
format jdate ddmmyy10.;
cards;
100 20 21/05/1920
101 22 05-08-1991
102 25 07.09.1992
103 23 01.01.1960
;
run;

proc print data= medi;
run;
