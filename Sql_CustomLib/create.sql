create database [CustomerLib_Berezikova]

create table Customers
(
CustomerId int identity(1,1) primary key,
Firstname varchar(50),
LastName varchar(50) not null,
PhoneNumber varchar(11) 
check(PhoneNumber like replicate('[0-9]',11)),
Email varchar(50) check(Email like '%@%.%'),
Notes varchar(max) not null,
TotalPurchaseAmount decimal
)

create table Adresses
(
AdressId int identity(1,1) primary key,
CustomerId int foreign key references Customers (CustomerId),
AddressLine varchar(100) not null,
Addressline2 varchar(100),
AddressType varchar(20) check(AddressType in ('Shipping','Billing')),
PostalCode varchar(6) not null,
City varchar(50) not null,
State varchar(20) not null,
Country varchar check(Country in ('Canada','USA')),
)
