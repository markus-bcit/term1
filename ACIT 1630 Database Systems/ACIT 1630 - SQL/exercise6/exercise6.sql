--q1 
create database exercise6
go

--q2 creating type
create type KEY_ID
    from int not null

--q3 creating tables
create table Customer
(
    CUST_ID KEY_ID,
    CUST_LASTNAME varchar(30) not null,
    CUST_FIRSTNAME varchar(20) not null, 
    CUST_PHONE char(10),
    CUST_BALANCE money not null,
)

create table Invoice
(
    INV_ID KEY_ID,
    CUST_ID KEY_ID,
    INV_DATE datetime
)

create table Line
(
    INV_ID KEY_ID,
    LINE_ID smallint not null,
    PROD_CODE varchar(10) not null,
    LINE_QUANTITY int not null,
    LINE_UNIT_PRICE money not null,
)

create table Product
(
    PROD_CODE varchar(10) not null,
    PROD_DESCRIPTION varchar(50),
    PROD_UNIT_PRICE money not null,
    VEND_ID KEY_ID,
)

create table Vendor
(
    VEND_ID KEY_ID,
    VEND_NAME varchar(40) not null,
    VEND_ADDRESS varchar(30),
    VEND_CITY varchar(20),
    VEND_PROVINCE char(2),
    VEND_POSTAL char(6),
    VEND_PHONE char(10),
)

alter table Customer
    add constraint PK_Customer
    primary key(CUST_ID)

--q4 adding primary keys
alter table Invoice
    add constraint PK_Invoice
    primary key(INV_ID)

alter table Line
    add constraint PK_Line
    primary key(INV_ID)

alter table Product 
    add constraint PK_Product
    primary key(PROD_CODE)

alter table Vendor
    add constraint PK_Vendor
    primary key(VEND_ID)

--q5 Adding foreign keys

alter table Invoice
    add constraint FK_Invoice
    foreign key(CUST_ID) references Customer

alter table Line
    add constraint FK_Line
    foreign key(PROD_CODE) references Product

alter table Line
    add constraint FK_LineProduct
    foreign key(INV_ID) references Invoice

alter table Product
    add constraint FK_Product
    foreign key(VEND_ID) references Vendor
--q6
alter table Invoice
    add constraint INV_TIME
    default (getdate()) for INV_DATE
--q7
alter table Vendor
    add constraint default_province
    default('BC') for VEND_PROVINCE
--q8
alter table Vendor
    add constraint default_city
    default('Burnaby') for VEND_CITY
--q9
alter table Product
    add constraint product_price
    check (PROD_UNIT_PRICE < 1000.00)
--q10
alter table Line
    add constraint quantity_min
    check (LINE_QUANTITY > 20.00)


CREATE table BRANCH
(
    BRANCH_ID INT
    Constraint BRANCH_ID_RANGE
    check (BRANCH_ID > 1 and BRANCH_ID < 999)
)

alter table BRANCH
add Constraint BRANCH_ID_RANGE
check (BRANCH_ID > 1 and BRANCH_ID < 999)


Create type KEY_CODE 
from char(7) not null

create table EMPLOYEE
(
    GENDER char(1) not null
)


alter table EMPLOYEE
add CONSTRAINT GENDER_VALUE
check (GENDER = 'F' or GENDER = 'U' or GENDER = 'M')

drop table TEMP_1

create table BOOK
(
    PAPERBACK char(1) not null 
    DEFAULT('U')
)

create table DEPENDANT
(
    EMP_ID char(10),
    DEP_ID char(10),
    primary key (EMP_ID, DEP_ID)
)

create table BOOK
(
    BOOK_TYPE char(3)
)

alter table BOOK
add CONSTRAINT BOOK_TYPE_VALUE
check (BOOK_TYPE in ('ABCDEFGHIJKLMNOPQRSTUVYXYZ'))

alter table Employees
    add constraint PK_Employee
        primary key (Emp_ID, DEP_ID)

alter table EMPLOYEE
    add EMP_PCT decimal,
    PROJ_NUM char(3)

alter table INVENTORY
    add constraint FK_BRANCH_ID,
    foreign key references BRANCH

alter table BRANCH
add Constraint BRANCH_ID_RANGE
check (BRANCH_ID >= 1 and BRANCH_ID <= 999)

Create type KEY_CODE
from char(7) not null

create table BRANCH 
(
    BRANCH_ID int not NULL
)
alter table BRANCH
add Constraint BRANCH_ID_RANGE
check (BRANCH_ID >= 1 and BRANCH_ID <= 999)

create table employee
(
    GENDER char(1)
)

create table TEMP_1
(
    asd char(1)
)

drop table TEMP_1

alter table EMPLOYEE
add CONSTRAINT GENDER_VALUE
check (GENDER = 'F' or GENDER = 'U' or GENDER = 'M')

create table BOOK
(
    paperback char(1)
)

alter table BOOK
add BOOK_TYPE char(3)

alter table BOOK
add CONSTRAINT BOOK_TYPE_VALUE
check (BOOK_TYPE in ('ABCDEFGHIJKLMNOPQRSTUVYXYZ'))

create table employees
(
    Emp_ID char(5) not null,
    dep_id char(5) not NULL
)

drop table employees

alter table Employees
add constraint PK_Employees
primary key (Emp_ID, DEP_ID)

alter table EMPLOYEE
add EMP_PCT decimal, 
    PROJ_NUM char(3)

CREATE TABLE INVENTORY(
    asd char(5) not null
)

create table BRANCH 
(
    BRANCH_ID int not NULL
)
drop table INVENTORY
DROP table BRANCH

alter table INVENTORY
add constraint FK_BRANCH_ID
foreign key (BRANCH_ID) references BRANCH

alter table Line
    add constraint PK_Line
    primary key(LINE_ID, INV_ID)


create table students
(
    abc varchar(5, 20)
)
alter table students
add siblings3 INT,
siblings2 int

drop table students