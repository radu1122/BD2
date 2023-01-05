
USE tourism_db;

/* Delete all the existing data from tourism_db */
DELETE FROM tourism_db.dbo.offers;
DELETE FROM tourism_db.dbo.clients;
DELETE FROM tourism_db.dbo.packages;
DELETE FROM tourism_db.dbo.employees;
DELETE FROM tourism_db.dbo.hotels;
DELETE FROM tourism_db.dbo.cities;
DELETE FROM tourism_db.dbo.countries;

/* Insert data into the employees table id name phone_number job_title email updated_at */
INSERT INTO tourism_db.dbo.employees (name, phone_number, job_title, email) VALUES ('John Smith', '123456789', 'Manager', 'test@test.com');
INSERT INTO tourism_db.dbo.employees (name, phone_number, job_title, email) VALUES ('Jane Doe', '987654321', 'Receptionist', 'test@test.com');
INSERT INTO tourism_db.dbo.employees (name, phone_number, job_title, email) VALUES ('John Doe', '123456789', 'Receptionist', 'test@test.com');
INSERT INTO tourism_db.dbo.employees (name, phone_number, job_title, email) VALUES ('Jane Smith', '987654321', 'Agent', 'test@test.com');
INSERT INTO tourism_db.dbo.employees (name, phone_number, job_title, email) VALUES ('John Smith', '123456789', 'Agent', 'test@test.com');

select * from tourism_db.dbo.employees;
/* Insert data into the countries table id name */
INSERT INTO tourism_db.dbo.countries (name) VALUES ('United States');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('Canada');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('Mexico');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('United Kingdom');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('France');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('Germany');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('Italy');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('Spain');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('Greece');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('China');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('Japan');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('Australia');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('South Africa');
INSERT INTO tourism_db.dbo.countries (name) VALUES ('Romania');

select * from tourism_db.dbo.countries;

/* Insert data into the cities table id name country_id */
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('New York', 1);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Los Angeles', 1);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Chicago', 1);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Houston', 1);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Toronto', 2);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Montreal', 2);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Vancouver', 2);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Mexico City', 3);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('London', 4);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Paris', 5);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Berlin', 6);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Rome', 7);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Madrid', 8);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Athens', 9);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Beijing', 10);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Tokyo', 11);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Sydney', 12);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Cape Town', 13);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Bucharest', 14);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Cluj-Napoca', 14);
INSERT INTO tourism_db.dbo.cities (name, country_id) VALUES ('Iasi', 14);

select * from tourism_db.dbo.cities;

/* Insert data into the hotels table id name stars city_id address phone_number */
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 1', 5, 1, '123 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 2', 4, 1, '456 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 3', 3, 1, '789 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 4', 2, 1, '101 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 5', 1, 1, '102 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 6', 5, 2, '123 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 7', 4, 2, '456 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 8', 3, 2, '789 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 9', 2, 2, '101 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 10', 1, 2, '102 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 11', 5, 3, '123 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 12', 4, 3, '456 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 13', 3, 3, '789 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 14', 2, 3, '101 Main Street', '123456789');
INSERT INTO tourism_db.dbo.hotels (name, stars, city_id, address, phone_number) VALUES ('Hotel 15', 1, 3, '102 Main Street', '123456789');

select * from tourism_db.dbo.hotels;

/* Insert data into the packages table id transport_type hotel_id start_date end_date price number_of_people room_name employee_id */
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 1, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 2, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 3, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 4, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 5, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 6, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 7, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 8, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 9, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 10, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 11, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 12, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Plane', 13, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Car', 14, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO tourism_db.dbo.packages (transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES ('Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);

select * from tourism_db.dbo.packages;

/* Insert data into the clients table id name email phone_number generated_from first_employee_id */
INSERT INTO tourism_db.dbo.clients (name, email, phone_number, generated_from, first_employee_id) VALUES ('John Doe', 'test@test.com', '123456789', 'Website', 1);
INSERT INTO tourism_db.dbo.clients (name, email, phone_number, generated_from, first_employee_id) VALUES ('Jane Doe', 'test@test.com', '123456789', 'Website', 1);
INSERT INTO tourism_db.dbo.clients (name, email, phone_number, generated_from, first_employee_id) VALUES ('John Smith', 'test@test.com', '123456789', 'Website', 1);
INSERT INTO tourism_db.dbo.clients (name, email, phone_number, generated_from, first_employee_id) VALUES ('Jane Doe', 'test@test.com', '123456789', 'Website', 1);
INSERT INTO tourism_db.dbo.clients (name, email, phone_number, generated_from, first_employee_id) VALUES ('John X', 'test@test.com', '123456789', 'Website', 1);
INSERT INTO tourism_db.dbo.clients (name, email, phone_number, generated_from, first_employee_id) VALUES ('Jane Smith', 'test@test.com', '123456789', 'Website', 1);

select * from tourism_db.dbo.clients;


/* Insert data into the offers table id client_id package_id final_price employee_id status */
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (1, 1, 100, 1, 'Pending');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (2, 2, 100, 1, 'Pending');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (3, 3, 100, 1, 'Pending');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (4, 4, 100, 1, 'Pending');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (5, 5, 100, 1, 'Done');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (6, 6, 100, 1, 'Done');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (1, 7, 100, 1, 'Done');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (2, 8, 100, 1, 'Done');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (3, 9, 100, 1, 'Done');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (4, 10, 100, 1, 'Done');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (5, 11, 100, 1, 'Done');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (6, 12, 100, 1, 'Pending');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (1, 13, 100, 1, 'Pending');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (2, 14, 100, 1, 'Pending');
INSERT INTO tourism_db.dbo.offers (client_id, package_id, final_price, employee_id, status) VALUES (3, 15, 100, 1, 'Pending');

select * from tourism_db.dbo.offers;