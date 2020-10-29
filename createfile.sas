/* How to import data in a project folder */

data sasuser.bankData;
*label depositID="Deposit ID"; 
input depositID age sex$;
cards;
1000 85 Male
2000 46 Male
3000 50 Female
;
run;

libname myproj "path to folder";

data myproj.Bank;
*label depositID="Deposit ID"; 
input depositID age sex$;
cards;
1000 85 Male
2000 46 Male
3000 50 Female
;
run;
