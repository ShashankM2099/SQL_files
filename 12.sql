use `carrental`;

Delimiter //
CREATE or replace PROCEDURE NumCarsAvailable(@car_type_id int,
@pick_up_date date ,
@drop_off_date date)
V_carID int;
Begin
select COUNT(car_id) into V_carID FROM
Reservation WHERE car_id = @car_type_ID AND pick_up_date>=@pick_up_date AND drop_off_date<=@drop_off_date;
print(V_carID);
END
Delimiter //

-- call NumCarsAvailable2(4,
-- '2018-12-09' ,
-- '2018-12-11', @V_carID);

-- select @V_carID;
-- select * from Reservation

create Trigger status_Update
after update on Reservation For Each Row
Begin
Update Car Set status = If(New.car_id is Null, 0,1)
Where Car.type_id = CarType.id and CarType.id = Reservation.car_type_id and Reservation.drop_date <=Current_TimeStamp;
END //