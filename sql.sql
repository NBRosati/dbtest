https://sqliteonline.com/

----------------------------------------------------------------- CREATE
CREATE TABLE Persons (
    Personid int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);


CREATE TABLE Directions (
  street varchar(255),
  number int,
  LastName varchar(255),
  --  FOREIGN KEY (colum from the actual table) REFERENCES table(table primary key)
  FOREIGN KEY (LastName) REFERENCES Persons(Personid)
 );

 ----------------------------------------------------------------- INSERT ONE OR MULTIPLE RECORDS

 -- for insert one value in a specific columns
--INSERT INTO table_name (column1, column2, column3, ...)
--VALUES (value1, value2, value3, ...);

-- for insert all values in table
--INSERT INTO table_name
--VALUES (value1, value2, value3, ...);

INSERT INTO Persons
VALUES (1, "Testc2", "Testc3", 100, 10),
	   (2, "Testc22", "Testc32", 1002, 20),
       (3, "Testc23", "Testc33", 1003, 30);

INSERT INTO Directions
VALUES ("D1", 100, "Testc2"),
	   ("D2", 1002, "Testc22"),
       ("D3", 1003, "Testc23");


----------------------------------------------------------------- SELECT
-- Select all
SELECT * FROM Persons

-- Select column
SELECT lastname FROM Persons

-- Select one record
SELECT * FROM Persons WHERE personid=1


----------------------------------------------------------------- UPDATE
UPDATE Persons
SET age = 2000
WHERE personid=1


----------------------------------------------------------------- ADD COLUMNS
ALTER TABLE Persons
ADD DNI


----------------------------------------------------------------- DELETE RECORD AND TABLE
DELETE FROM Persons
WHERE personid=1

DROP TABLE Directions

----------------------------------------------------------------- ADD FOREING KEY
ALTER TABLE Directions
ADD FOREIGN KEY (lastnamereference) REFERENCES Persons(PersonID);


----------------------------------------------------------------- JOIN
SELECT Directions.street, Persons.DNI, Persons.Age -- columns_names
from Directions --table 1
INNER JOIN  Persons on Directions.LastName = Persons.LastName -- table 2 on table1.column_name = table2_column_name