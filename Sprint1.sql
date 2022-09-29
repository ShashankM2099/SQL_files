use demo;
drop table if exists Buildings;
CREATE TABLE if not exists Buildings (
    BuildingID SMALLINT AUTO_INCREMENT PRIMARY KEY not null,
    Name VARCHAR(40) not null,
    Style VARCHAR(15)not null,
    Location  VARCHAR(50)not null,
    DateOfCreation DATE not null,
    TimeFrame DATETIME not null
);

drop table if exists StructureSupport;
CREATE TABLE IF NOT EXISTS StructureSupport (
    Type VARCHAR(10) not null primary key,
    Material VARCHAR(10) not null,
    Height DECIMAL(3,3) not null,
    Width DECIMAL(4, 4) not null,
    Radius DECIMAL(7,5) not null,
    Special_Features VARCHAR(25) not null
);

insert into Buildings(BuildingID,Name,Style,Location,DateOfCreation,TimeFrame)
values 
(001,"Houseonus", "Straight","US", '1998-09-09', "20"),
(002,"Propel House", "Measured","UK", "1234-03-04","13"),
(003,"Vanity House", "Xylo","EU", "1566-01-05", "09"),
(004,"Hogwarts", "Emporium", "AK", "1881-09-12", "07");

insert into StructureSupport (Type, Material, Height,Width, Radius, Special_Features)
values ("Pillar","Cement", 34.54,24.55,50, "Strong Pillar"),
("Pillars", "Asbestos", 50.98,67.99,93, "Very Strong Pillar"),
("Iron Beams", "Quetzocatl", 95.22, 88.33,54.92, "Iron Beam");
select * from StructureSupport;



