-- create database demo;
use demo;
-- Shashank Mondrati
-- Student ID: 801026182

CREATE TABLE IF NOT EXISTS Horse (
    ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    RegisteredName VARCHAR(100),
    Breed VARCHAR(50) CHECK (Breed IN ('Egyptian Arab' , 'Holsteiner',
        'Quarter Horse',
        'Paint',
        'SaddleBred')),
    Height DECIMAL(3 , 1 ) CHECK (Height >= 10.0 AND Height <= 20.0),
    BirthDate DATE CHECK (BirthDate >= '2015-01-01')
);

CREATE TABLE IF NOT EXISTS Student (
    ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    Street VARCHAR(50) NOT NULL,
    City VARCHAR(20) NOT NULL,
    State CHAR(2) NOT NULL DEFAULT 'TX',
    Zip BIGINT NOT NULL,
    Phone CHAR(10) NOT NULL,
    Email VARCHAR(30) UNIQUE
);

CREATE TABLE IF NOT EXISTS LessonSchedule (
    HorseID BIGINT NOT NULL,
    StudentID BIGINT,
    LessonDateTime DATETIME NOT NULL,
    PRIMARY KEY (HorseID , StudentID),
    FOREIGN KEY (StudentID)
        REFERENCES Student (ID),
    FOREIGN KEY (HorseID)
        REFERENCES Horse (ID)
);

-- show columns from LessonSchedule;
DROP TABLE IF EXISTS Movie;
CREATE TABLE IF NOT EXISTS Movie (
    ID INT UNSIGNED PRIMARY KEY,
    Title VARCHAR(50),
    Genre VARCHAR(20),
    RatingCode VARCHAR(10),
    Year SMALLINT UNSIGNED
);
ALTER TABLE Movie ADD Producer VARCHAR(50); 
ALTER TABLE Movie  DROP Column Genre;
Alter table Movie RENAME COLUMN Year TO ReleaseYear;
ALTER TABLE Movie MODIFY ReleaseYear smallint;
-- inserting values into Horse

insert into Horse(ID, RegisteredName,Breed,Height, BirthDate)
Values
(001, 'Babe','Quarter Horse', 15.3, '2015-02-10');
insert into Horse(ID, RegisteredName,Breed,Height, BirthDate)
Values
(002,'Independence','Holsteiner', 16.0,	'2017-03-13');
insert into Horse(ID, RegisteredName,Breed,Height, BirthDate)
values
(003,'Ellie','Saddlebred', 15.0,'2016-12-22');
insert into Horse(ID, RegisteredName,Breed,Height, BirthDate)
values
(004, NULL,'Egyptian Arab',14.9,'2019-10-12');

update Horse set Height = 15.6 where ID = 002;
-- select * from Horse where ID =002;
update Horse set RegisteredName = 'Lady Luck',BirthDate ='2015-05-01' where ID=004;
-- select * from Horse where ID=004;
update Horse set Breed = NULL where BirthDate >= '2016-12-22';

-- select * from Horse;
-- as per the latest assignments updatedinserting 2 new rows
insert into Horse(ID, RegisteredName,Breed,Height,BirthDate)
values
(005,'REAL CLASSIC', 'Holsteiner', 14.0, '2015-04-20');
insert into Horse(ID, RegisteredName,Breed,Height, BirthDate)
values
(006, 'ELVIS DICE', 'Paint', 17.0, '2015-03-13' );

delete from Horse where ID =005;
delete from Horse where Breed = 'Paint';
delete from Horse where BirthDate< '2015-4-13';
 select * from Horse;


