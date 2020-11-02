/* Using `output;` to add data by observation */

data bankData;
	a=1;
	b=2;
	c="Hi there";
	output;
	a=2;
	b=4;
	c="Whatsup?";
	output;
run;

proc print data=bankDataata;
