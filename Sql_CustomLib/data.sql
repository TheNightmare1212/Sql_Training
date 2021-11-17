insert into Customer
values
--Valid
('Vasiliy','Kotov','99','vasya.cat@gmail.com','nobody knows if it is a human or a cat',10000),
--Totally nvalid
('Ivan',null,'777','myemail',null,'500'),
--Invalid
(null,'Ivanov','phone','ivanoff@mail','Unknown person',0)

insert into Address
values
--Valid
(1,'Ocean Drive, 180',null,'Billing','658300','Miami','Florida','USA'),
--Totally invalid
(100,null,null,'Unknown','655558907',null,null,'Russia'),
--Invalid
(2,'Pushkina','Kolotushkina','Dostavka','65','Kiyv','What','Ukraine')