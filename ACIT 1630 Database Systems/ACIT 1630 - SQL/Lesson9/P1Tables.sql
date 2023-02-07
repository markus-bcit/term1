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

