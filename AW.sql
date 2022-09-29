use demo;



create table if not exists Appliance(
Appliance_SerialNum varchar(30) not null primary key,
Customer_ID int not null,
ApplianceName varchar(34),
Foreign key (Customer_ID) references Customer_Name(Customer)
);

create table if not exists Customer(
Customer_ID int not null primary key,
Customer_Name varchar(50) not null,
Customer_PhNumber varchar(13) not null,
Customer_Email varchar(20) unique not null,
Customer_Address varchar(85)
);
insert into Customer (Customer_ID,Customer_Name,Customer_PhNumber,Customer_Address)
values
(1,"Sophie Goldberg","508-555-1256","123 Main St, Hopkinton, MA"),
(2,"Mitch Chu", "617-555-9898", "5525 Winter Rd, Medford, MA"),
(3,"Jamie Fernandez", "617-555-4125", "2 Hope St, Hull, MA");

insert into Appliance(Customer_ID,Serial_Num, Appliance_Name)
values
(1,"KN-78-215-896", "Refrigerator"),
(2,"WP-55-311-698", "Dishwasher"),
(3,"Dishwasher","WP-78-956-694");

-- first two tables


create table if not exists Part(
Part_Num varchar(20) not null primary key
);

create table if not exists Service_Parts(
Part_Num varchar(20) not null primary key,
Service_ID varchar(80) primary key,
foreign key (Part_Num ) REFERENCES Part(Part_Num),
foreign key (Service_ID) REFERENCES ServiceCalendar(Service_ID)
);


insert into Part()
values
("KN-1256"),


insert into Service_Parts()
values
("KN-1256","Robles"),
("WP-1788","Wong"),
("WP-8877","Henson");

create table if not exists ServiceCalendar(
Service_ID varchar(80) primary key,
Serial_Num int not null,
DateCalled date,
Date_of_Service date,
Technician_ID int not null,
FOREIGN KEY (Technician_ID ) REFERENCES Technician(Technician_ID ),
FOREIGN KEY (Serial_Number ) REFERENCES Appliance(Appliance_SerialNum)
);

create table if not exists Technician (
Technician_ID int not null primary key,
Tech_Name varchar(50),
PartsOrdered varchar(100)
);

insert into ServiceCalendar(ServiceID,Serial_Num,DateCalled,Date_of_Service)
values
("Robles","KN-78-215-896","01-06-2022","01-10-2022"),
("Wong","WP-55-311-698","01-06-2022","01-07-2022"),
("Henson","WP-78-956-694", "01-07-2022","01-09-2022");

insert into Technician (Technician_ID,Technician_Name, Parts_Ordered)
values
(0101,"Robles", "KN-1256"),
(0102,"Wong","WP-1788"),
(0103,"Henson","WP-8877");
