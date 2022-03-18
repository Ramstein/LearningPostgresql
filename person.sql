CREATE TABLE car(
	car_uid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	price NUMERIC(19,2) NOT NULL CHECK (price > 0)
);

create table person (
	person_uid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(150),
	gender VARCHAR(7) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50),
	car_uid UUID REFERENCES car(car_uid),
	UNIQUE(car_uid),
	UNIQUE(email)
);

-- INSERT INTO CAR
insert into car (car_uid, make, model, price) VALUES (uuid_generate_v4(), 'Land Rover', 'Sterling', '87665.38');
insert into car (car_uid, make, model, price) VALUES (uuid_generate_v4(), 'Ford', 'Fiesta', '91234.00');
insert into car (car_uid, make, model, price) VALUES (uuid_generate_v4(), 'Ford', 'Focus', '91234.00');
 
-- INSERT INTO PERSON
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Filip', 'Woodlands', 'fwoodlands0@cbsnews.com', 'Male', '2022/01/11', 'United States');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Leupold', 'Klainer', 'lklainer1@macromedia.com', 'Female', '2022/03/12', 'Bhutan');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Ryun', 'Dominka', 'rdominka2@mlb.com', 'Female', '2022/01/15', 'Venezuela');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Nyssa', 'Moule', null, 'Genderfluid', '2021/08/09', 'Belize');
