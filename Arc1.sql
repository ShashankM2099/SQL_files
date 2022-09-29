use demo;
CREATE TABLE if not exists Buildings (
    BuildingID SMALLINT AUTO_INCREMENT PRIMARY KEY not null,
    Name VARCHAR(40) not null,
    Style VARCHAR(15)not null,
    Location  VARCHAR(50)not null,
    DateOfCreation DATE not null,
    TimeFrame DATETIME not null
);

CREATE TABLE IF NOT EXISTS StructureSupport (
    Type VARCHAR(10) not null primary key,
    Material VARCHAR(10) not null,
    Height DECIMAL(3,3) not null,
    Width DECIMAL(4, 4) not null,
    Radius DECIMAL(7,5) not null,
    Special_Features VARCHAR(25) not null
);

Create table if not exists TouristPopularity (
Name varchar(40) primary key not null,
Rating INT not null,
Description varchar(200) not null,
VisitorsPerYear varchar(5),
OperatingHours TIME not null,
OperatingDays DATE not null
);

desc Buildings;
CREATE VIEW buildView1 
AS Select Name,Style, Location 
FROM Buildings 
WHERE TimeFrame > 1895 and TimeFrame < 2000 
order by TimeFrame desc
WITH CHECK option;

insert into buildView1 (Name, Style, Location, DateOfCreation, TimeFrame)
values
("Techno", "Iron Pillar", "EU", 1881-09-13 );

insert into Buildings (Name, Style, Location, DateOfCreation)
values
("GothmAsulym", "Pillars", "UK", 1800-08-09),
("Arkahm", "Iron Pillar Combo", "EU", 1776-08-01);

insert into Buildings (Name, Style, Location, DateOfCreation)
values
("US Building", "Circles", "AK", "1656-08-01");

insert into Buildings (Name, Style, Location, DateOfCreation, TimeFrame)
values
("UK Building", "UK Style", "UK", "1800-09-11", "20"),
("EU Building", "EU Style Pillar", "EU", "1900-08-10", "21");
select * from Buildings;

insert into StructureSupport (Type, Material, Height, Width, Radius, Special_Features)
values 
("Pillars", "Cement", 45.67,12.34, 76, "Extremely Strong Pillar");

insert into StructureSupport (Type, Material, Height, Width, Radius, Special_Features)
values 
("Concrete", "Cement", 15.67,22.34, 26, "Extremely Strong Cement Pillar"),
("TokyoCement", "TokyoCement", 55.67,62.34, 86, "Extremely Strong cementPillar");
select * from StructureSupport;
CREATE VIEW strucSupport1 
AS SELECT Type, Material FROM StructureSupport 
WHERE Type = 'Cement'OR 'Quetzcoatl' OR 'Asbestos'
 with check option;
 
CREATE VIEW touristPop1 
AS Select ratings, visitorsPerYear 
FROM TouristPopularity 
WHERE ratings > 5.27 OR visitorsPerYear  >= 75000000; 
 
 
 
insert into TouristPopularity (Name,
Rating,
Description,
VisitorsPerYear,
OperatingHours,
OperatingDays)
values ("1", 5.7, "1.2", 67888, "", "");

select * from TouristPopularity;

insert into TouristPopularity (Name,
Rating,
Description,
VisitorsPerYear,
OperatingHours,
OperatingDays)
values ("99", 5.7, "1.2", 67888, "", ""),
("12", 6.7, "1.2", 15000, "", ""),
("7", 8.7, "1.2", 7500000, "", ""),
("9", 8.9, "1.2", 766690000, "", "");

select Rating, VisitorsPerYear from TouristPopularity;
SELECT Rating, VisitorsPerYear 
FROM TouristPopularity
 WHERE Rating > 5.0 
 AND VisitorsPerYear  >=50000;

SELECT Type, Material 
FROM StructureSupport ;

SELECT Name, 
Location FROM Buildings 
WHERE DateOfCreation > 1800;



DELIMITER //
CREATE PROCEDURE GetAllTouristPopularity()
	BEGIN
	SELECT * FROM TouristPopularity
	END 
DELIMITER //

DELIMITER //
CREATE PROCEDURE GetAllBuildings()
	BEGIN
	SELECT * 
	FROM Buildings
	END 
DELIMITER //;

select * from Buildings;

DELIMITER //
CREATE PROCEDURE GetAllStructures()
	BEGIN
	SELECT * 
	FROM StructureSupport
	END 
DELIMITER //

select * from StructureSupport;




 
 
 
 