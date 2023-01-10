 CREATE DATABASE CompanyDatabase;

 CREATE TABLE "Employee" (
 "FullName" TEXT NOT NULL,
 "Salary" INT,
 "JobPosition" TEXT,
 "PhoneExtension" INT,
 "IsPartTime" BOOL
 );
  //Adding 10 Empployees
 INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Eduard Huapaya', '2345678', 'Distributor', '1919', True);
 
 INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Steven Huapaya', '344556', 'Shipping', '2019', True);

 INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Damaris Carrillo', '45678', 'Inventory', '0987', False);

 INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Caleb Morgan', '346789', 'Sales', '8736', False);

 INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Nicol Morgan', '345678', 'Sales', '9823', False);

 INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Margret Cindy', '897766', 'Quality Control', '7654', True);

 INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Jacob Carson', '83752', 'Janitor', '8234', True); 

 INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Mireya Garcia', '234555', 'Programmer', '2983', False);

 INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Juan Garcia', '3948755', 'Manager', '3940', False);

 INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Sebastion Pencan', '938590', 'Senior Programmer', '8734', False);

//Creating EmployeeTable
 SELECT * FROM "Employee";
+------------------+---------+-------------------+----------------+------------+
| FullName         | Salary  | JobPosition       | PhoneExtension | IsPartTime |
|------------------+---------+-------------------+----------------+------------|
| Eduard Huapaya   | 2345678 | Distributor       | 1919           | True       |
| Steven Huapaya   | 344556  | Shipping          | 2019           | True       |
| Damaris Carrillo | 45678   | Inventory         | 987            | False      |
| Caleb Morgan     | 346789  | Sales             | 8736           | False      |
| Nicol Morgan     | 345678  | Sales             | 9823           | False      |
| Margret Cindy    | 897766  | QualityControl    | 7654           | True       |
| Jacob Carson     | 83752   | Janitor           | 8234           | True       |
| Mireya Garcia    | 234555  | Programmer        | 2983           | False      |
| Juan Garcia      | 3948755 | Manager           | 3940           | False      |
| Sebastion Pencan | 938590  | Senior Programmer | 8734           | False      |
+------------------+---------+-------------------+----------------+------------+

 //Selecting only the full names & phone extensions for only fullTime employees
 SELECT "FullName", "PhoneExtension" FROM "Employee" WHERE "IsPartTime" = False;
+------------------+----------------+
| FullName         | PhoneExtension |
|------------------+----------------|
| Damaris Carrillo | 987            |
| Caleb Morgan     | 8736           |
| Nicol Morgan     | 9823           |
| Mireya Garcia    | 2983           |
| Juan Garcia      | 3940           |
| Sebastion Pencan | 8734           |
+------------------+----------------+
SELECT 6
 
  //a new partTime employee,  a software developer, a salary of 450. 
 INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Brian Curtis', '450', 'Software Developer', '911', TRUE);

//a new employee (cook)
INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Jeff Curtis', '8908766', 'Cook', '090', False);
// updating the cooks salary
UPDATE "Employee" SET "Salary" = '500' WHERE "FullName" = 'Jeff Curtis';

//creating employee named lazy larry 
INSERT INTO "Employee"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES ('Lazy Larry', '0', 'Being Lazy', '345', TRUE);
//deleting emoloyees named lazy larry
DELETE FROM "Employee" WHERE "FullName" = 'Lazy Larry';

//ColumnTable: named ParkingSpot up to 10 characters.
ALTER TABLE "Employee" ADD COLUMN "ParkingSpot" VARCHAR(10);

