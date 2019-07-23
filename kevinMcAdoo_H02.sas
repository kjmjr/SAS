OPTIONS PAGESIZE=25 ORIENTATION=LANDSCAPE PAGENO=1 LINESIZE=256; 

Data Award_Winners;


INPUT Oscardate DATE7. Oscaryear Budget DOLLAR12. Gross DOLLAR13. 
Title $23. Asofdate $12. Rating Message1 $ 1-22 Message2 $ 1-20;


Profit = Gross - Budget;

PBPercent = Profit / Budget;

PBPercent = PBPercent * 100;


IF PBPercent < 100 THEN DO;

 Message1 = 'Less than 100%';

 Message2 = 'Impressive';
 
 
END;

ELSE IF PBPercent > 100 AND PBPercent < 1000 THEN DO;

 Message1 = 'Between 100% and 1000%';

 Message2 = 'More impressive';
 

END;

ELSE DO;

 Message1 = 'More than 1000%';

 Message2 = 'Even more impressive';
 

END;


PBPercent = PBPercent / 100;

DATALINES;
27Feb11 2011  $15,000,000 $373,700,000 The Kings Speech       02/26/2012  8.2 
07Mar10 2010  $11,000,000  $12,647,089 The Hurt Locker        02/26/2012  7.2
22Feb09 2009  $15,000,000 $141,319,195 Slumdog Millionaire    02/26/2012  8.2  
24Feb08 2008  $25,000,000  $74,273,505 No Country for Old Men 02/26/2012  8.2
25Feb07 2007  $90,000,000 $289,800,000 The Departed           02/26/2012  8.5 
05Mar06 2006   $6,500,000  $98,410,061 Crash                  02/26/2012  8.0
;




RUN;

TITLE 'Oscar Winners';

TITLE2 'Program Exercise 02 ';

FOOTNOTE 'SAS Programming (Online) ';

FOOTNOTE2 'submitted by Kevin McAdoo';

PROC PRINT Data= Award_Winners;


FORMAT Oscardate DATE7. Budget DOLLAR12. Gross DOLLAR13. Title $23. Asofdate $12. 
Profit DOLLAR12. PBPercent PERCENT7.2;

RUN;


