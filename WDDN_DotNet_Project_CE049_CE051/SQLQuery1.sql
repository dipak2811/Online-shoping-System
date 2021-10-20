create table tblUserMaster(UID int primary key identity,Name nvarchar(30),Surname nvarchar(30),Address nvarchar(30),City nvarchar(30),Pincode nvarchar(30),Mobile nvarchar(30),Email nvarchar(30),Password nvarchar(30),Gendar nvarchar(30))

drop table tblUserMaster


create table AdminMst(IID int primary key identity,Username nvarchar(30),Password nvarchar(30))

insert into AdminMst(Username,Password) values('coder','123')

create table CateMst(CID int primary key identity,CName nvarchar(30))


create table ItemMst(IID int primary key identity,IName nvarchar(300),Detail nvarchar(400),Price float,Image nvarchar(250),Qnt int,AQnt int,SQnt int,CName nvarchar(50),EntryDate datetime,Image1 nvarchar(300),Image2 nvarchar(400),Size int)



drop table tblsize


create table tblsize(ID int primary key identity,Sizename nvarchar(50))


insert into tblsize(Sizename) values('01')
insert into tblsize(Sizename) values('01')
insert into tblsize(Sizename) values('01')
insert into tblsize(Sizename) values('10')
insert into tblsize(Sizename) values('09')
insert into tblsize(Sizename) values('08')
insert into tblsize(Sizename) values('06')
insert into tblsize(Sizename) values('05')
insert into tblsize(Sizename) values('04')
insert into tblsize(Sizename) values('03')
insert into tblsize(Sizename) values('02')
insert into tblsize(Sizename) values('01')
insert into tblsize(Sizename) values('M')
insert into tblsize(Sizename) values('xxLarge')
insert into tblsize(Sizename) values('XLarge')
insert into tblsize(Sizename) values('Smaller')
insert into tblsize(Sizename) values('Large')
insert into tblsize(Sizename) values('Small')

