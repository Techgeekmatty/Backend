
Create Table EmployeeAnnualSalary  (
 EmployeeID int NOT NULL PRIMARY KEY,
 FirstName varchar(20),
 LastName varchar(20),
 PayperHour int,
 HoursPerWeek int,
 Weeks int
 )
 Insert into EmployeeAnnualSalary
VALUES(2000,'Matty','Kasu',15,50,45)
(3000,'Lincoln','Kasu',15,50,45),
(4000,'Muyoba','Siya',15,50,45),
(5000,'Mathew','Lifasi',15,50,45),
(6000,'Nancy','Simataa',15,50,45),
(7000,'Brooklyn','Mukasa',15,50,45),
(8000,'Lionel','Messi',15,50,45),
(9000,'Cristiano','Ronaldo',15,50,45),
(10000,'Elgin','Siyanga',15,50,45)
USE [Nust.matty]
Select * FROM EmployeeAnnualSalary
Alter Table EmployeeAnnualSalary
ADD AnnualSalary int 

Alter Trigger InsertedMessage
On EmployeeAnnualSalary
AFTER INSERT,UPDATE
AS
BEGIN
Print 'You have inserted data to the table'
END


Create Trigger AnnualSalaryCalculation
On EmployeeAnnualSalary
After Insert,Update
AS
BEGIN
Update EmployeeAnnualSalary
SET AnnualSalary = PayperHour * HoursPerWeek * Weeks
END
Update EmployeeAnnualSalary
SET PayperHour = 20
WHERE EmployeeID = 7000

Insert into EmployeeAnnualSalary (EmployeeID,FirstName,LastName,PayperHour,HoursPerWeek,Weeks)
Values(15000,'Matengu','Kasu',100,60,50)