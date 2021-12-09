filename df temp;
proc http
 url="https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-07-07/coffee_ratings.csv"
 method="GET"
 out=df;
run;


/* import to a SAS data set */
proc import
  file=df
  out=work.df replace
  dbms=csv;
run;

/*Reordering the columns*/
proc sql;
create table pcaDf as
select aroma,
       flavor,
       aftertaste,
       acidity,
       body,
       balance,
       uniformity,
       clean_cup,
       sweetness,
       cupper_points
from df; 
quit;

/*Proceed with analysis using your favorite proc statement.*/

