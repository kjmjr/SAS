Data studentsds;

INPUT FirstName $ LastName $ CreditHours;

DATALINES;
Tina Sheppard 9;
Andie Howard 12;
Jessie George 9;

RUN;

PROC PRINT Data= studentsds;
RUN;