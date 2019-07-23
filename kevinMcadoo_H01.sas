Data Furniture;

INPUT Item $ Quantity $ Purchase $ Cost $ PurchaseAmount;

PurchaseAmount = Cost * Quantity;


DATALINES;
Sofa 1 YES 1300.00
Chair 2 YES 250.00
Table 3 YES 750.00
Cabinet 2 YES 450.00
Chaise 0 NO 325.00
Loveseat 1 YES 800.00
Bookcase 2 YES 200.00
Recliner 0 NO 1000.00
Ottoman 0 NO 375.00
Armoire 1 YES 4000.00
;


RUN;

PROC PRINT Data= Furniture;

TITLE 'Furniture Purchase Order';

TITLE2 'Homework 01';

FOOTNOTE 'CSC-152-090 (SAS Online) ';

FOOTNOTE2 'submitted by Kevin McAdoo';

RUN;
