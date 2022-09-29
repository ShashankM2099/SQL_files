create database worstBuy;
use worstBuy;

create table FreeUser (
	User_ID mediumInt not null primary key,
    first_Name varchar(20) not null,
    last_Name varchar(20) not null,
    phone_num varchar(11) not null,
    email varchar(30) not null
);
desc FreeUser;

create table PremiumUser (
    first_Name varchar(20) not null,
    last_Name varchar(20) not null,
    phone_num varchar(11) not null,
    payment varchar(5) not null -- card or check or cash
);
alter table PremiumUser add User_ID mediumint not null primary key;
desc PremiumUser;

create Table if not exists CorporatUser (
 first_Name varchar(20) not null,
    last_Name varchar(20) not null,
    phone_num varchar(11) not null,
    payment varchar(5) not null, -- card or check or cash
    agentID smallint not null,
    num_of_agents int not null
);
alter table CorporatUser add User_ID mediumint not null primary key;
desc CorporatUser;

create Table Admin (
first_Name varchar(20) not null,
    last_Name varchar(20) not null,
   email varchar(30) not null,
    payment varchar(5) not null -- card or check or cash
);
alter table Admin add User_ID mediumint not null primary key;
desc Admin;

create Table if not exists AccountHold (
User_ID mediumInt not null primary key,
account_ID int not null,
paid bool not null
);
desc AccountHold;

create table if not exists Item (
Item_ID int not null primary key,
customer_FirstName varchar (25) not null,
customer_LastName varchar(25) not null,
repName varchar(50) not null,
contacted_rep bool not null
);
desc Item;





