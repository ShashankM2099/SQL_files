use `carrental`;

-- select * from Reservation;
-- create view OngoingReservations as
-- select Reservation.reservation_id as "Reservation ID", Reservation.customer_id as "Customer ID",
-- concat(Customer.first_name," ",Customer.last_name) as "Customer Name", concat(format (Reservation.pick_up_date, 'YYYY/MM/DD'), "-" ,
-- (format(Reservation.drop_off_date, 'YYYY/MM/DD'))) as "Reservation Date(From/To)"
-- FROM Reservation

-- JOIN Customer on Reservation.customer_id= Customer.id
-- where Reservation.pick_up_date<=CURRENT_TIMESTAMP and
-- Reservation.drop_off_date>=CURRENT_TIMESTAMP;
-- 
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

set global log_bin_trust_function_creators =1;

Delimiter $$
create Trigger status_Update
after update on Reservation For Each Row
Begin
Update Car Set Status = If(New.car_id is Null, 0,1)
Where Car.type_id = CarType.id and CarType.id = Reservation.car_type_id;
END $$

