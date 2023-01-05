
USE tourism_db;

/* Delete all the existing data from tourism_db */
DELETE FROM offers;
DELETE FROM clients;
DELETE FROM packages;
DELETE FROM employees;
DELETE FROM hotels;
DELETE FROM cities;
DELETE FROM countries;

/* Insert data into the employees table id name phone_number job_title email created_at updated_at */
INSERT INTO employees (id, name, phone_number, job_title, email, created_at) VALUES (1, 'John Smith', '123456789', 'Manager', 'test@test.com', '2022-01-01 00:00:00');
INSERT INTO employees (id, name, phone_number, job_title, email, created_at) VALUES (2, 'Jane Doe', '987654321', 'Receptionist', 'test@test.com', '2022-01-01 00:00:00');
INSERT INTO employees (id, name, phone_number, job_title, email, created_at) VALUES (3, 'John Doe', '123456789', 'Receptionist', 'test@test.com', '2022-01-01 00:00:00');
INSERT INTO employees (id, name, phone_number, job_title, email, created_at) VALUES (4, 'Jane Smith', '987654321', 'Agent', 'test@test.com', '2022-01-01 00:00:00');
INSERT INTO employees (id, name, phone_number, job_title, email, created_at) VALUES (5, 'John Smith', '123456789', 'Agent', 'test@test.com', '2022-01-01 00:00:00');

select * from employees;

/* Insert data into the countries table id name created_at */
INSERT INTO countries (id, name, created_at) VALUES (1, 'United States', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (2, 'Canada', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (3, 'Mexico', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (4, 'United Kingdom', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (5, 'France', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (6, 'Germany', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (7, 'Italy', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (8, 'Spain', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (9, 'Greece', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (10, 'China', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (11, 'Japan', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (12, 'Australia', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (13, 'South Africa', '2022-01-01 00:00:00');
INSERT INTO countries (id, name, created_at) VALUES (14, 'Romania', '2022-01-01 00:00:00');

select * from countries;

/* Insert data into the cities table id name country_id created_at */
INSERT INTO cities (id, name, country_id, created_at) VALUES (1, 'New York', 1, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (2, 'Los Angeles', 1, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (3, 'Chicago', 1, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (4, 'Houston', 1, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (5, 'Toronto', 2, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (6, 'Montreal', 2, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (7, 'Vancouver', 2, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (8, 'Mexico City', 3, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (9, 'London', 4, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (10, 'Paris', 5, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (11, 'Berlin', 6, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (12, 'Rome', 7, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (13, 'Madrid', 8, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (14, 'Athens', 9, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (15, 'Beijing', 10, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (16, 'Tokyo', 11, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (17, 'Sydney', 12, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (18, 'Cape Town', 13, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (19, 'Bucharest', 14, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (20, 'Cluj-Napoca', 14, '2022-01-01 00:00:00');
INSERT INTO cities (id, name, country_id, created_at) VALUES (21, 'Iasi', 14, '2022-01-01 00:00:00');

select * from cities;

/* Insert data into the hotels table id name stars city_id address phone_number created_at */
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (1, 'Hotel 1', 5, 1, '123 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (2, 'Hotel 2', 4, 1, '456 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (3, 'Hotel 3', 3, 1, '789 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (4, 'Hotel 4', 2, 1, '101 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (5, 'Hotel 5', 1, 1, '102 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (6, 'Hotel 6', 5, 2, '123 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (7, 'Hotel 7', 4, 2, '456 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (8, 'Hotel 8', 3, 2, '789 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (9, 'Hotel 9', 2, 2, '101 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (10, 'Hotel 10', 1, 2, '102 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (11, 'Hotel 11', 5, 3, '123 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (12, 'Hotel 12', 4, 3, '456 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (13, 'Hotel 13', 3, 3, '789 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (14, 'Hotel 14', 2, 3, '101 Main Street', '123456789', '2022-01-01 00:00:00');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number, created_at) VALUES (15, 'Hotel 15', 1, 3, '102 Main Street', '123456789', '2022-01-01 00:00:00');

select * from hotels;

/* Insert data into the packages table id transport_type hotel_id start_date end_date price number_of_people room_name employee_id created_at */
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (1, 'Plane', 1, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (2, 'Plane', 2, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (3, 'Plane', 3, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (4, 'Plane', 4, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (5, 'Plane', 5, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (6, 'Plane', 6, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (7, 'Plane', 7, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (8, 'Plane', 8, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (9, 'Plane', 9, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (10, 'Plane', 10, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (11, 'Plane', 11, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (12, 'Plane', 12, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (13, 'Plane', 13, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (14, 'Car', 14, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (15, 'Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (16, 'Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (17, 'Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (18, 'Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id, created_at) VALUES (19, 'Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1, '2021-09-08 00:00:00');

select * from packages;

/* Insert data into the clients table id name email phone_number generated_from first_employee_id created_at */
INSERT INTO clients (id, name, email, phone_number, generated_from, first_employee_id, created_at) VALUES (1, 'John Doe', 'test@test.com', '123456789', 'Website', 1, '2021-09-08 00:00:00');
INSERT INTO clients (id, name, email, phone_number, generated_from, first_employee_id, created_at) VALUES (2, 'Jane Doe', 'test@test.com', '123456789', 'Website', 1, '2021-09-08 00:00:00');
INSERT INTO clients (id, name, email, phone_number, generated_from, first_employee_id, created_at) VALUES (3, 'John Smith', 'test@test.com', '123456789', 'Website', 1, '2021-09-08 00:00:00');
INSERT INTO clients (id, name, email, phone_number, generated_from, first_employee_id, created_at) VALUES (4, 'Jane Doe', 'test@test.com', '123456789', 'Website', 1, '2021-09-08 00:00:00');
INSERT INTO clients (id, name, email, phone_number, generated_from, first_employee_id, created_at) VALUES (5, 'John X', 'test@test.com', '123456789', 'Website', 1, '2021-09-08 00:00:00');
INSERT INTO clients (id, name, email, phone_number, generated_from, first_employee_id, created_at) VALUES (6, 'Jane Smith', 'test@test.com', '123456789', 'Website', 1, '2021-09-08 00:00:00');

select * from clients;


/* Insert data into the offers table id client_id package_id final_price employee_id status created_at */
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (1, 1, 1, 100, 1, 'Pending', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (2, 2, 2, 100, 1, 'Pending', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (3, 3, 3, 100, 1, 'Pending', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (4, 4, 4, 100, 1, 'Pending', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (5, 5, 5, 100, 1, 'Done', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (6, 6, 6, 100, 1, 'Done', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (7, 1, 7, 100, 1, 'Done', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (8, 2, 8, 100, 1, 'Done', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (9, 3, 9, 100, 1, 'Done', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (10, 4, 10, 100, 1, 'Done', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (11, 5, 11, 100, 1, 'Done', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (12, 6, 12, 100, 1, 'Pending', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (13, 1, 13, 100, 1, 'Pending', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (14, 2, 14, 100, 1, 'Pending', '2021-09-08 00:00:00');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status, created_at) VALUES (15, 3, 15, 100, 1, 'Pending', '2021-09-08 00:00:00');

select * from offers;