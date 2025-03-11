create table vehicles(
id serial,
name varchar,
vehicle_type varchar,
purchase_year int
)

insert into vehicles (name, vehicle_type, purchase_year)
values ('Honda Civic', 'Car', 2021),
       ('Tata Truck', 'Truck', 2019),
       ('BMW', 'Car', 2025),
	   ('vande bharat', 'Train', 2025),
	   ('purple', 'Bus', 2006)
	   

select * from vehicles

__Enum__

create type vehicle_enum as enum ('Car', 'Truck', 'Motorcycle', 'Train', 'Bus')


alter table Vehicles alter column vehicle_type set data type vehicle_enum using vehicle_type :: vehicle_enum 

__Check__

insert into vehicles (name, vehicle_type, purchase_year) values ('Honda Civic', 'ABC', 2021)

__ERROR__

ERROR:  invalid input value for enum vehicle_enum: "ABC"


__conditional query with enum type__

Select *,
Case
    When purchase_year >= 2020 Then 'New Vehicle'
    When purchase_year Between 2010 AND 2019 Then 'Old Vehicle'
    Else 'Very Old Vehicle'
End as vehicle_age_status
From vehicles