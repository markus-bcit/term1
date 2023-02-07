create database Project1
go

-- New Query --

use Project1
go


create table Team
(
	Team_Name	    char(20) primary key, 
	Wins	        int,
	Losses		    int,
    Ties            int,
    Playoff_Record  int,
    Standing        int
)

create table Contracts 
(
	Contract_Num     char(10) primary key,
	Start_Date		date,
    End_Date        date,
	Salary		    money, 
    Contract_Type   char(20),
    Bonuses         char(20)
)

create table Coaches
(
	Coach_ID	    char(10) primary key, 
	Coaches_FName	char(20),
    Coaches_LName   char(20),
    Coach_Position  char(20),
    Coach_DOB       date,
    Contract_Num    char(10)
        foreign key references Contracts,
    Team_Name       char(20)
        foreign key references Team
)

create table Players
(
	Player_Num	    int primary key,
	Player_FName    char(20),
    Player_LName    char(20),
    Player_Position char(20),
    Player_Height   int,     
    Player_Weight   int,
    Player_DOB      date,
    Contract_Num    char(10)
		foreign key references Contracts,
	Team_Name		char(20)
        foreign key references Team
)

create table Practice
(
    Practice_Num    char(10) primary key,
    PDate           date,
    PStart_Time     time,
    PEnd_Time       time,
    Practice_Type   char(20),
    PLocation       char(50),
    Coach_ID        char(10)
        foreign key references Coaches
)

create table Games
(
    Game_Num    char(20) primary key,
    GStart_Time time,
    GEnd_Time   time,
    GLocation   char(30),
    Opponent    char(20),
    Coach_ID    char(10)
        foreign key references Coaches
)

create table Game_Attendence
(
    Player_Num  int
        foreign key references Players,
    Game_Num    char(20)
        foreign key references Games,
    primary key (Player_Num, Game_Num)
)

create table Practice_Attendence
(
    Player_Num  int
        foreign key references Players,
    Practice_Num char(10)
        foreign key references Practice,
    primary key (Player_Num, Practice_Num)
)

-- New Query --

use Project1
go

INSERT INTO Team VALUES
	('Warriors',53,29,10,32,1),
	('Mavericks',52,30,5,24,3),
	('Lakers',52,19,10,60,2),
	('Celtics',51,31,7,72,4),
	('Cavaliers',44,38,9,22,5)

INSERT INTO Contracts VALUES
  	(574,'04-04-2020','04-04-2022',75000000,'Two-Years','None'),
  	(676,'02-08-2020','02-08-2022',70000000,'Two-Years','Yes'),
  	(476,'01-27-2018','01-27-2022',140000000,'Four-Years','Yes'),
  	(342,'07-15-2020','07-15-2022',90000000,'Two-Years','None'),
  	(290,'05-03-2018','05-03-2022',1700000000,'Four-Years','Yes')

INSERT INTO Coaches VALUES
	('200','Steve','Kerr','Head Coach','09-27-1965','342','Warriors'),
	('201','Jason','Kid','Head Coach','03-23-1973','342','Mavericks'),
	('202','Darvin','Ham','Head Coach','07-23-1973','574','Lakers'),
	('203','Joe','Mazzulla','Head Coach','06-30-1988','574','Celtics'),
	('204','John-Blair','Bickerstaff','Head Coach','03-19-1979','676','Cavaliers')

INSERT INTO Players VALUES 
	(30,'Stephen','Curry','Point Guard',190,185,'03-14-1988','290','Warriors'),
	(77,'Luka','Dončić','Point Guard',200,230,'02-28-1999','290','Mavericks'),
	(06,'LeBron','James','Small Forward',205,250,'12-30-1984','290','Lakers'),
	(00,'Jayson','Tatum','Small Forward',203,210,'03-03-1998','342','Celtics'),
	(31,'Jarret','Allen','Center',210,243,'04-21-1998','574','Cavaliers')

INSERT INTO Practice VALUES
	('01','05-23-2022','13:30:00','16:30:00','Conditioning','1011 Broadway, Oakland',200),
	('02','06-01-2022','08:00:00','10:30:00','Shooting','1520 Inspiration Dr, Dallas',201),
	('03','05-10-2022','16:00:00','18:00:00','Dribbling','2275 East Mariposa Ave, El Segundo',202),
	('04','06-10-2022','09:30:00','11:30:00','Scrimmage','840 Winter St, Waltham',203),
	('05','06-01-2022','13:30:00','16:30:00','Shooting','6101 Brecksville Road, Independence',204)

INSERT INTO Games VALUES
	('30000','16:00:00','18:00:00','Chase Centre','Nets',200),
  	('30060','18:30:00','20:30:00','American Airlines Center','Knicks',201),
  	('30070','10:00:00','12:00:00','Crypto.com Arena','Heat', 202),
  	('30080','12:00:00','14:00:00','TD Garden','Nuggets', 203),
  	('30090','14:00:00','16:00:00','Rocket Mortgage FieldHouse','Spurs', 204)

INSERT INTO Game_Attendence VALUES
	('30','30000'),
	('77','30060'),
	('06','30070'),
	('00','30080'),
	('31','30090')

INSERT INTO Practice_Attendence VALUES 
  	('30','01'),
	('77','02'),
	('06','03'),
	('00','04'),
	('31','05')