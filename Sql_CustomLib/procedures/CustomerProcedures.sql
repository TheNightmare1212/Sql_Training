
go
create proc CreateCustomer
@Firstname varchar(50),
@LastName varchar(50),
@PhoneNumber varchar(11), 
@Email varchar(50),
@Notes varchar(max),
@TotalPurchaseAmount decimal
as
insert into Customers
values
(
@Firstname,
@LastName,
@PhoneNumber,
@Email,
@Notes,
@TotalPurchaseAmount
)

go 
create proc ReadCustomer
@CustomerId int
as
select * from Customers 
where CustomerId=@CustomerId

go
create proc UpdateCustomer
@CustomerId int,
@Firstname varchar(50),
@LastName varchar(50),
@PhoneNumber varchar(11), 
@Email varchar(50),
@Notes varchar(max),
@TotalPurchaseAmount decimal
as
update Customers
set 
Firstname=@Firstname,
Lastname=@LastName,
PhoneNumber=@PhoneNumber,
Email=@Email,
Notes=@Notes,
TotalPurchaseAmount=@TotalPurchaseAmount
where CustomerId=@CustomerId

go 
create proc DeleteCustomer
@CustomerId int
as
delete from Customers 
where CustomerId=@CustomerId




