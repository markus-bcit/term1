
---- ALL WORKING DO NOT CHANGE --------------------------------
create table Team
(
	Team_ID	        char(4), 
	Team_Name	    varchar(50) not null,
    Team_City       varchar(30),
    Team_State      char(2),
    Team_Div        char(2),
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
	Coach_FName		varchar(30) not null,
    Coach_LName   	varchar(30) not null,
    Coach_DOB       date,
    Coach_Spec      varchar(50),
    Contract_ID     char(4),
    Team_ID	        char(4),
	CONSTRAINT Coaches_PK primary key (Coach_ID),
	FOREIGN key (Contract_ID) REFERENCES Contracts(Contract_ID),
    FOREIGN key (Team_ID) REFERENCES Team(Team_ID)
)


create table Players
(
	Player_ID	    char(4),
    Player_Num     char(2),
	Player_FName    varchar(30) not null,
    Player_LName    varchar(30) not null,
    Player_Position varchar(30),
    Player_Height   int,     
    Player_Weight   int,
    Player_DOB      date not null,
    Contract_ID     char(4),
	Team_ID	        char(4),
	CONSTRAINT Players_PK primary key (Player_ID),
	FOREIGN key (Contract_ID) REFERENCES Contracts(Contract_ID),
    FOREIGN key (Team_ID) REFERENCES Team(Team_ID)
)

create table Practice
(
    Practice_ID     char(4),
    PDate           date not null,
    PStart_Time     time not null,
    PEnd_Time       time,
    Practice_Type   varchar(40),
    PLocation       varchar(50),
	CONSTRAINT Practice_PK primary key (Practice_ID)
)

create table Games
(
    Game_ID     char(4),
	GDate		date not null,
    GStart_Time time not null,
    GLocation   char(30),
    Opponent    char(20),
    Coach_ID    char(4) 
    CONSTRAINT Game_PK primary key (Game_ID)
)

create table Game_Attendence
(
    Player_ID	    char(4),
    Game_ID         char(4), 
    CONSTRAINT Game_Attendence_PK primary key (Player_ID, Game_ID),
	FOREIGN KEY (Player_ID) REFERENCES Players(Player_ID),
	foreign key (Game_ID) REFERENCES Games(Game_ID)
)

create table Practice_Attendence
(
    Player_ID	    char(4),
    Practice_ID     char(4),
    CONSTRAINT Practice_Attendence_PK primary key (Player_ID, Practice_ID),
	FOREIGN KEY (Player_ID) REFERENCES Players(Player_ID),
	FOREIGN KEY (Practice_ID) REFERENCES Practice(Practice_ID)
)

-- drop table Game_Attendence
-- DROP table Practice_Attendence
-- drop table Practice
-- drop table games 
-- drop table Coaches
-- drop table Players
-- drop table Team
-- DROP table Contracts



INSERT INTO Team VALUES
	('T001','Golden State Warriors','San Francisco','CA','PA'),
	('T002','Mavericks','Dallas','TX','SW'),
	('T003','Bucks','Milwaukee','WI','CE'),
	('T004','TimberWolves','Minnesota','MI','NW'),
	('T005','Suns','Phoenix','AZ','PA'),
    ('T006','Jazz','Utah','UT','NW'),
    ('T007','Cavaliers','Cleveland','OH','CE'),
    ('T008','Raptors','Toronto','OT','AT'),
    ('T009','Celtics','Boston','MA','AT'),
    ('T010','Lakers','Los Angeles','CA','PA')

INSERT INTO Contracts VALUES
	('C001','04-04-2020','04-04-2022',75000000,null),
	('C002','02-08-2020','02-08-2022',70000000,12000),
	('C003','01-27-2018','01-27-2022',14000000,31000),
	('C004','07-15-2020','07-15-2022',9000000,null),
	('C005','05-03-2018','05-03-2022',17000000,12000),
	('C006','09-19-2021','07-05-2022',680000000,42000),
	('C007','05-23-2019','05-03-2022',null,null),
	('C008','12-03-2017','05-03-2022',140000000,null),
	('C009','09-26-2018','05-03-2022',null,25000),
	('C010','03-18-2015','05-03-2022',140000000,null)
	

INSERT INTO Coaches VALUES
	('C200','Steve','Kerr','1965-09-27','Head Coach',null,'T001'),
	('C201','Jason','Kid','1973-03-23','Head Coach','C002','T002'),
	('C202','Darvin','Ham','1973-02-23','Head Coach','C005','T010'),
	('C203','Joe','Mazzulla','1988-06-30','Head Coach',null,null),
	('C204','John-Blair','Bickerstaff','1979-03-19','Head Coach','C001',null),
	('C205','Galvin','Skett','1968-04-18','Head Coach','C009','T008'),
	('C206','Zilvia','Thamelt','1977-05-13','Head Coach','C003','T005'),
	('C207','Joan','Leatherborrow','1987-08-19','Head Coach',null,'T003'),
	('C208','Roz', 'Winsom','1973-03-03','Assistant Coach','C010','T006'),
	('C209','Stefania','Wipper','1989-08-07','Head Coach','C005',null)

INSERT INTO Players values
	('P001','01','Stephen','Curry','Point Guard',190,185,'03-14-1988','C001',null),
	('P002','30','Luka','Dončić','Point Guard',200,230,'02-28-1999','C004','T002'),
	('P003','01','LeBron','James','Small Forward',205,250,'12-30-1984','C003','T010'),
	('P004','72','Jayson','Tatum','Small Forward',203,210,'03-03-1998',null,'T009'),
	('P005','26','Jarret','Allen','Center',210,243,'04-21-1998','C009','T001'),
	('P006','10','Fred','VanVleet','Point Guard',190,240,'11-26-1999','C003',null),
	('P007','41','Deandre','Ayton','Center',200,230,'01-03-1998','C005','T005'),
	('P008','26','Grayson','Allen','Small Forward',240,230,'09-25-1997',null,'T003'),
	('P009','10','Jaylen','Agbaji','Point Guard',200,218,'05-06-1998','C008','T007'),
	('P010','72','Kyle','Anderson','Small Forward',210,235,'09-04-1999','C010','T004'),
	('P011','24','Tim','Jaylen','Point Guard',null,185,'03-14-1988','C001','T001'),
	('P012',null,'Luka','Mark','Point Guard',202,230,'02-28-1999',null,null),
	('P013','32','LeBron','Frank',null,235,250,'12-30-1984','C003','T010'),
	('P014','73','Charles','Carlos','Small Forward',203,210,'03-03-1998','C004','T009'),
	('P015','65','Frank','Austin','Center',210,243,'04-21-1998',null,'T001'),
	('P016','10','Fred','VanVleet','Point Guard',190,243,'11-26-1999','C003','T008'),
	('P017','37','Carlos','Blake','Center',190,200,'01-03-1998','C005','T005'),
	('P018','38','Mark','Jaylen','Small Forward',220,null,'09-25-1997','C001','T003'),
	('P019','85','Ochai','Adams','Point Guard',220,218,'05-06-1998',null,'T006'),
	('P020','47','Kyle','Barry','Small Forward',230,235,'09-04-1999','C010','T004'),
	('P021','48','Ron','Ayton','Center',220,230,'01-03-1998','C005','T005'),
	('P028',null,'Aldrich','Baxter','Small Forward',210,234,'09-25-1997','C001',null),
	('P039','01','Jaylen','Aldrich','Point Guard',200,218,'05-06-1998','C008','T006'),
	('P030','38','Barry','Jamel','Small Forward',250,235,'09-04-1999','C010','T007'),
	('P031','48','Tim','Carmelo','Point Guard',190,185,'03-14-1988',null,'T001'),
	('P032','48','Luka','Blake','Point Guard',202,230,'02-28-1999','C004','T002'),
	('P033','49','Carmelo','Baxter','Small Forward',235,250,'12-30-1984','C003','T010'),
	('P034','52','Charles','Mark','Small Forward',203,null,'03-03-1998','C004','T009'),
	('P042','24','Luka','Mark','Point Guard',202,230,'02-28-1999','C004','T002'),
	('P053','93','LeBron','Carmelo','Small Forward',235,250,'12-30-1984','C003','T010'),
	('P044','74','Malik','Ron','Small Forward',203,210,'03-03-1998',null,'T009'),
	('P055',null,'Frank','Austin','Center',210,243,'04-21-1998','C009','T001'),
	('P046','13','Fred','Malik','Point Guard',190,243,'11-26-1999','C003','T007'),
	('P047','36','Carmelo','Ron','Center',190,200,'01-03-1998','C005','T005'),
	('P048','73','Mark','Malik','Small Forward',220,220,'09-25-1997','C001','T003'),
	('P059','10','Ochai','Barry','Point Guard',220,218,'05-06-1998','C008','T006'),
	('P060','37','Carmelo','Adams','Small Forward',230,235,'09-04-1999',null,'T004')



INSERT INTO Practice VALUES
	('PR01','05-23-2022','13:30:00','16:30:00','Conditioning','Chase Center'),
	('PR02','06-01-2022','08:00:00','10:30:00','Shooting','Madison Square Garden'),
	('PR03','05-10-2022','16:00:00','18:00:00','Dribbling','Chase Center'),
	('PR04','06-10-2022','09:30:00','11:30:00',null,'Rocket Mortgage FieldHouse'),
	('PR05','06-01-2022','13:30:00','16:30:00','Shooting','OVO Center'),
	('PR06','07-24-2022','14:30:00','13:30:00','Conditioning','Madison Square Garden'),
	('PR07','06-14-2022','18:30:00','19:30:00','Dribbling','Chase Center'),
	('PR08','02-24-2022','11:30:00','15:30:00','Shooting','Vivint Arena'),
	('PR09','08-28-2022','14:30:00','23:30:00','Scrimmage','Rocket Mortgage FieldHouse'),
	('PR10','09-13-2022','15:30:00','18:30:00','Shooting','Vivint Arena')
	

INSERT INTO Games VALUES
	('G001','16:00:00','18:00:00','Chase Centre','Nets','C201'),
  	('G002','18:30:00','20:30:00','American Airlines Center','Knicks','C202'),
  	('G003','10:00:00','12:00:00','Crypto.com Arena','Heat', 'C202'),
  	('G004','12:00:00','14:00:00','TD Garden','Nuggets', 'C205'),
  	('G005','14:00:00','16:00:00','Rocket Mortgage FieldHouse','Spurs', 'C205'),
	('G006','16:00:00','18:00:00','Scotia Bank Arena','Raptors', 'C206'),
	('G007','18:00:00','20:00:00','Footprint Center','Suns', 'C207'),
	('G008','20:00:00','22:00:00','Fiserv Forum','Bucks', 'C208'),
	('G009','12:00:00','16:00:00','Vivint Area','Jazz', 'C209'),
	('G010','14:00:00','16:00:00','United Centre','Kings', 'C208'),
	('G011','20:00:00','22:00:00','Target Centre','TimberWolves', 'C200')

INSERT INTO Game_Attendence VALUES
	('P001','G001'),
	('P005','G001'),
	('P011','G001'),
	('P015','G001'),
	('P031','G001'),
	('P002','G003'),
	('P012','G003'),
	('P032','G003'),
	('P042','G003'),
	('P003','G004'),
	('P013','G004'),
	('P033','G004'),
	('P053','G004')

INSERT INTO Practice_Attendence VALUES 
  	('P004','PR03'),
	('P014','PR03'),
	('P034','PR03'),
	('P044','PR03'),

	('P007','PR06'),
	('P017','PR06'),
	('P021','PR06'),
	('P047','PR06'),

	('P010','PR07'),
	('P020','PR07'),
	('P030','PR07'),
	('P060','PR07')

--question 3
-- List the player name and number where that attened a practice

-- select concat(players.Player_FName, ', ', players.Player_LName) as 'Player Name', players.player_Num
-- from Players
-- INNER join Practice_Attendence on players.Player_ID = Practice_Attendence.Player_ID
-- INNER join Practice on Practice_Attendence.Practice_ID = Practice.Practice_ID
-- where practice.PLocation = 'Chase Center'

-- select concat(players.Player_FName, ', ', players.Player_LName) as 'Player Name', players.player_Num
-- from Players
-- join Practice_Attendence on players.Player_ID = Practice_Attendence.Player_ID
-- join Practice on Practice_Attendence.Practice_ID = Practice.Practice_ID
-- where practice.PLocation = 'Chase Center'
-- --question 4
-- select concat(players.Player_FName, ', ', players.Player_LName) as 'Player Name', Contracts.Salary
-- from Players
-- RIGHT OUTER join Contracts on players.Contract_ID = Contracts.Contract_ID

-- question 3----------------
-- inner join 
-- list the players first and last as play name from the players table and their Salary from contracts only if the player is attending a practice 
select concat(players.Player_FName, ', ', players.Player_LName) as
'Player Name', Contracts.Salary
from Players
INNER join Contracts on players.Contract_ID = Contracts.Contract_ID
inner join Practice_Attendence on players.Player_ID = Practice_Attendence.Player_ID

---question 4 -----------------------
--outer join 
-- list all coaches first name and last name from the coaches table and their team name from the team and bonuses from the contract table 
-- where the coach is part of a team 
select concat(coaches.Coach_FName, ', ', coaches.Coach_LName) as 
'Coach Name', Team.Team_Name, Contracts.Bonuses
from Coaches
left outer join Team on Coaches.Team_ID = Team.Team_ID
left outer join Contracts on Coaches.Contract_ID = Contracts.Contract_ID
where Coaches.Team_ID is not null

--question 5
--show all players that do not have a game
select concat(Player_FName, ', ', Player_LName) as 'Player Name'
from Players
where Player_ID not in (
	select player_ID 
	from Game_Attendence
)

--question 6 
--How many players are on each team 
select Team.Team_Name, count(Player_ID) as 'Total Amount'
from Team
join Players on Team.Team_ID = Players.Team_ID
group by Team.Team_Name

--question 7-------
--List the players on each team from the teams table, their team name from the team table, and the total amount in bonuses for each team from the contracts table.
select  concat(players.player_Fname, ', ',Players.Player_LName) as 'Player
Name',Team.Team_Name, sum(Contracts.Bonuses) over 
(order by Team.Team_Name) as 'Total Amount by Team'
from Contracts
join Players on Contracts.Contract_ID = players.Contract_ID
join Team on players.Team_ID = Team.Team_ID

select  concat(players.player_Fname, ', ',Players.Player_LName) as 'Player
Name',Team.Team_Name, sum(Contracts.Bonuses) over 
(PARTITION by Team.Team_Name) as 'Total Amount by Team'
from Contracts
join Players on Contracts.Contract_ID = players.Contract_ID
join Team on players.Team_ID = Team.Team_ID

--question 8
-- Roster of players on the Warriors team 
create view Warriors_Roster
as 
select concat(players.Player_FName, ', ', players.Player_LName) as 'Player Name', players.Player_Num
from Players
join Team on players.Team_ID = team.Team_ID
where team.Team_City = 'San Francisco'

select 

--- OUTER JOIN 
select concat(players.Player_FName, ', ', players.Player_LName) as 'Player Name', Contracts.Salary
from Players
left outer join Contracts on players.Contract_ID = Contracts.Contract_ID
left outer join Practice_Attendence on players.Player_ID = Practice_Attendence.Player_ID
inner join Practice on Practice_Attendence.Practice_ID = Practice.Practice_ID


select concat(players.Player_FName, ', ', players.Player_LName) as 'Player Name', Contracts.Salary
from Players
INNER join Contracts on players.Contract_ID = Contracts.Contract_ID




select * 
from players 

select * from players

-- INSERT INTO SPONSORS VALUES
-- 	('Weissnat and Sons', '11/17/2022', '11/16/2022', '$90.65', '1'),
-- 	('Mayer, Heaney and Hauck', '11/22/2022', '5/25/2022', '$36.78', '3'),
-- 	('Jerde-Moore', '2/6/2022', '12/22/2021', '$26.98', '2'),
-- 	('Satterfield-Mosciski', '3/12/2022', '7/23/2022', '$72.76', '4'),
-- 	('Nitzsche and Sons', '10/7/2022', '12/10/2021', '$43.53', '5'),
-- 	('Wintheiser, Schoen and Reilly', '9/11/2022', '12/23/2021', '$1.61','6');
-- 	('Beer Group', '6/17/2022', '8/25/2022', '$2.33','7');
-- 	('Lang and Sons', '5/2/2022', '3/20/2022', '$8.36','8');
-- 	('Schuster, Doyle and Quitzon', '11/2/2022', '2/10/2022', '$1.68', '9');
-- 	('Kassulke-Bahringer', '6/2/2022', '4/28/2022', '$7.18' '10');
	
	

-- INSERT INTO TRAINER VALUES
-- 	('PHD', 'YOGA'),
-- 	('UNDERGRAD', 'WEIGHT'),
-- 	('BACHOLORS', 'CARDIO'),
-- 	('BACHOLORS', 'ENDURANCE'),
-- 	('UNDERGRAD', 'CARDIO')
-- 	('PHD', 'YOGA'),
-- 	('UNDERGRAD', 'WEIGHT'),
-- 	('BACHOLORS', 'CARDIO'),
-- 	('PHD', 'ENDURANCE'),
-- 	('UNDERGRAD', 'CARDIO')

