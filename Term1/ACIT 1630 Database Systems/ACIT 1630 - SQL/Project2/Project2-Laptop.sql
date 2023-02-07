
create table Team
(
	Team_ID	        char(4), 
	Team_Name	    varchar(50) not null,
    Team_City       varchar(30),
    Team_State      char(2),
    Team_Div        char(1),
	CONSTRAINT Teams_PK primary key (Team_ID)
)

create table Contracts 
(
	Contract_ID     char(4) not null,
	Start_Date		date not null,
    End_Date        date not null,
	Salary		    money, 
    Bonuses         money,
	CONSTRAINT Contracts_PK primary key (Contract_ID)
)

create table Coaches
(
	Coach_ID	    char(4), 
	Coaches_FName	varchar(30) not null,
    Coaches_LName   varchar(30) not null,
    Coach_DOB       date,
    Coach_Email     varchar(30),
    Coach_Phone     varchar(50),
    Coach_Spec      varchar(50),
    Contract_ID     char(4),
    Team_ID	        char(4),
	CONSTRAINT Coaches_PK primary key (Coach_ID),
	CONSTRAINT Contracts_PK FOREIGN key (Contract_ID) REFERENCES Contracts(Contract_ID),
    CONSTRAINT Teams_PK FOREIGN key (Team_ID) REFERENCES Teams(Team_ID)
)

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);

create table Players
(
	Player_ID	    char(4) primary key not null,
    Players_Num     char(2),
	Player_FName    varchar(30) not null,
    Player_LName    varchar(30) not null,
    Player_Position varchar(30),
    Player_Height   int,     
    Player_Weight   int,
    Player_DOB      date not null,
    Contract_ID     char(4) 
		foreign key references Contracts,
	Team_ID	        char(4) 
        foreign key references Team
)

create table Practice
(
    Practice_ID     char(4) primary key not null,
    PDate           date not null,
    PStart_Time     time not null,
    PEnd_Time       time,
    Practice_Type   varchar(40),
    PLocation       varchar(50),
)

create table Games
(
    Game_ID     char(4) primary key not null,
	GDate		date not null,
    GStart_Time time not null,
    GLocation   char(30),
    Opponent    char(20),
    Coach_ID    char(4) 
        foreign key references Coaches
)

create table Game_Attendence
(
    Player_ID	    char(4) 
        foreign key references Players,
    Game_ID         char(4) 
        foreign key references Games,
    primary key (Player_ID, Game_ID)
)

create table Practice_Attendence
(
    Player_ID	    char(4) 
        foreign key references Players,
    Practice_ID     char(4) 
        foreign key references Practice,
    primary key (Player_ID, Practice_ID)
)

drop table Game_Attendence
DROP table Practice_Attendence
drop table Practice
drop table games 
drop table Coaches
drop table Players
drop table Team
DROP table Contracts

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

INSERT INTO SPONSORS VALUES
	('Weissnat and Sons', '11/17/2022', '11/16/2022', '$90.65', 70);
	('Mayer, Heaney and Hauck', '11/22/2022', '5/25/2022', '$36.78', 1);
	('Jerde-Moore', '2/6/2022', '12/22/2021', '$26.98', 95);
	('Satterfield-Mosciski', '3/12/2022', '7/23/2022', '$72.76', 96);
	('Nitzsche and Sons', '10/7/2022', '12/10/2021', '$43.53', 100);
	('Leffler LLC', '5/2/2022', '4/1/2022', '$70.09', 74);
	('Macejkovic, Reilly and Bergnaum', '3/27/2022', '10/3/2022', '$28.52', 11);
	('Flatley, Toy and Nienow', '6/25/2022', '6/25/2022', '$75.12', 78);
	('Kassulke and Sons', '9/5/2022', '11/5/2022', '$5.87', 64);
	('McGlynn Group', '9/25/2022', '1/4/2022', '$14.91', 79);