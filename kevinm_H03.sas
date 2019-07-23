OPTIONS PAGESIZE=25 ORIENTATION=LANDSCAPE PAGENO=1 LINESIZE=256; 

Data nfls;

INPUT FootballString $24.;

City = SCAN(FootballString, 1, '2012');
Year = SCAN(FootballString, findw(FootballString, '2012', ' ', 'E'));
Team = SCAN(FootballString, -1);



IF index(City, ' ') < LENGTH(City) THEN Spacec = ANYSPACE(City);
   
ELSE Spacec = 0;

	

IF index(Team, ' ') < LENGTH(Team) THEN

   Spacet = ANYSPACE(Team);
   
ELSE Spacet = 0;

IF ANYDIGIT(Team) < LENGTH(Team) THEN

   Numbert = ANYDIGIT(Team);

ELSE Numbert = 0;

 
CityTeam = CATS(City, '-', Team);

City = UPCASE(City);
City = Translate(City, 'a','A','e','E','o','O','u','U','i','I');
Team = UPCASE(Team);
Team = Translate(Team, 'a','A','e','E','o','O','u','U','i','I');


Length Superbowl $15;

IF Team = 'Giants' THEN Superbowl = 'Winner';


ELSE IF Team = 'Patriot' THEN Superbowl = 'Runner up';


ELSE Superbowl = 'Not a Contender';
 
 
IF Team = 'Ravens' || Team = 'Bengals' || Team = 'Browns' || Team = 'Steelers' THEN Conference = 'AFC-NORTH';


ELSE IF Team = 'Bears' || Team = 'Lions' || Team = 'Packers' || Team = 'Vikings' THEN Conference = 'NFC-NORTH';
	

ELSE IF Team = 'Texans' || Team = 'Colts' || Team = 'Jaguars' || Team = 'Titans' THEN Conference = 'AFC-SOUTH';


ELSE IF Team = 'Falcons' || Team = 'Panthers' || Team = 'Saints' || Team = 'Buccaneers' THEN Conference = 'NFC-SOUTH';


ELSE IF Team = 'Bills' || Team = 'Dolphins' || Team = 'Patriots' || Team = 'Jets' THEN Conference = 'AFC-EAST';


ELSE IF Team = 'Cowboys' || Team = 'Giants' || Team = 'Eagles' || Team = 'Redskins' THEN Conference = 'NFC-EAST';


ELSE IF Team = 'Broncos' || Team = 'Chiefs' || Team = 'Raiders' || Team = 'Chargers' THEN Conference = 'AFC-WEST';
	

ELSE Conference = 'NFC-WEST';

	
IF Spacec ~= 0 THEN SpacecC = 'Yes';
 
ELSE SpacecC= 'No';
	

IF Spacet ~= 0 THEN SpacetC = 'Yes';

ELSE SpacetC = 'No';
	


IF Numbert ~=0 THEN NumbertC = 'Yes';

ELSE NumbertC = 'No';
	
DataLines;
Baltimore 2012 Ravens
Cincinnati 2012 Bengals
Cleveland 2012 Browns
Pittsburgh 2012 Steelers
Chicago 2012 Bears
Detroit 2012 Lions
Green Bay 2012 Packers
Minnesota 2012 Vikings
Houston 2012 Texans
Indianapolis 2012 Colts
Jacksonville 2012 Jaguars
Tennessee 2012 Titans
Atlanta 2012 Falcons
Carolina 2012 Panthers
New Orleans 2012 Saints
Tampa Bay 2012 Buccaneers
Buffalo 2012 Bills
Miami 2012 Dolphins
New England 2012 Patriots
New York 2012 Jets
Dallas 2012 Cowboys
New York 2012 Giants
Philadelphia 2012 Eagles
Washington 2012 Redskins
Denver 2012 Broncos
Kansas City 2012 Chiefs
Oakland 2012 Raiders
San Diego 2012 Chargers
Arizona 2012 Cardinals
San Francisco 2012 49ers
Seattle 2012 Seahawks
St. Louis 2012 Rams
;



RUN;
TITLE 'NFL Team Analysis Report';

TITLE2 'Program Exercise 03';

FOOTNOTE 'SAS Programming (Online) ';

FOOTNOTE2 'submitted by Kevin McAdoo';

PROC PRINT Data= nfls;



RUN;

