
USE tourism_db;

/* Delete all the existing data from tourism_db */
DELETE FROM offers;
DELETE FROM clients;
DELETE FROM packages;
DELETE FROM employees;
DELETE FROM hotels;
DELETE FROM cities;
DELETE FROM countries;

/* Insert data into the employees table id name phone_number job_title email updated_at */
INSERT INTO employees (id, name, phone_number, job_title, email) VALUES (1, 'John Smith', '123456789', 'Manager', 'test@test.com');
INSERT INTO employees (id, name, phone_number, job_title, email) VALUES (2, 'Jane Doe', '987654321', 'Receptionist', 'test@test.com');
INSERT INTO employees (id, name, phone_number, job_title, email) VALUES (3, 'John Doe', '123456789', 'Receptionist', 'test@test.com');
INSERT INTO employees (id, name, phone_number, job_title, email) VALUES (4, 'Jane Smith', '987654321', 'Agent', 'test@test.com');
INSERT INTO employees (id, name, phone_number, job_title, email) VALUES (5, 'John Smith', '123456789', 'Agent', 'test@test.com');

select * from employees;
/* Insert data into the countries table id name */
INSERT INTO countries (id, name) VALUES (1, 'United States');
INSERT INTO countries (id, name) VALUES (2, 'Canada');
INSERT INTO countries (id, name) VALUES (3, 'Mexico');
INSERT INTO countries (id, name) VALUES (4, 'United Kingdom');
INSERT INTO countries (id, name) VALUES (5, 'France');
INSERT INTO countries (id, name) VALUES (6, 'Germany');
INSERT INTO countries (id, name) VALUES (7, 'Italy');
INSERT INTO countries (id, name) VALUES (8, 'Spain');
INSERT INTO countries (id, name) VALUES (9, 'Greece');
INSERT INTO countries (id, name) VALUES (10, 'China');
INSERT INTO countries (id, name) VALUES (11, 'Japan');
INSERT INTO countries (id, name) VALUES (12, 'Australia');
INSERT INTO countries (id, name) VALUES (13, 'South Africa');
INSERT INTO countries (id, name) VALUES (14, 'Romania');

select * from countries;

/* Insert data into the cities table id name country_id */
INSERT INTO cities (id, name, country_id) VALUES (1, 'New York', 1);
INSERT INTO cities (id, name, country_id) VALUES (2, 'Los Angeles', 1);
INSERT INTO cities (id, name, country_id) VALUES (3, 'Chicago', 1);
INSERT INTO cities (id, name, country_id) VALUES (4, 'Houston', 1);
INSERT INTO cities (id, name, country_id) VALUES (5, 'Toronto', 2);
INSERT INTO cities (id, name, country_id) VALUES (6, 'Montreal', 2);
INSERT INTO cities (id, name, country_id) VALUES (7, 'Vancouver', 2);
INSERT INTO cities (id, name, country_id) VALUES (8, 'Mexico City', 3);
INSERT INTO cities (id, name, country_id) VALUES (9, 'London', 4);
INSERT INTO cities (id, name, country_id) VALUES (10, 'Paris', 5);
INSERT INTO cities (id, name, country_id) VALUES (11, 'Berlin', 6);
INSERT INTO cities (id, name, country_id) VALUES (12, 'Rome', 7);
INSERT INTO cities (id, name, country_id) VALUES (13, 'Madrid', 8);
INSERT INTO cities (id, name, country_id) VALUES (14, 'Athens', 9);
INSERT INTO cities (id, name, country_id) VALUES (15, 'Beijing', 10);
INSERT INTO cities (id, name, country_id) VALUES (16, 'Tokyo', 11);
INSERT INTO cities (id, name, country_id) VALUES (17, 'Sydney', 12);
INSERT INTO cities (id, name, country_id) VALUES (18, 'Cape Town', 13);
INSERT INTO cities (id, name, country_id) VALUES (19, 'Bucharest', 14);
INSERT INTO cities (id, name, country_id) VALUES (20, 'Cluj-Napoca', 14);
INSERT INTO cities (id, name, country_id) VALUES (21, 'Iasi', 14);

select * from cities;

/* Insert data into the hotels table id name stars city_id address phone_number */
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (1, 'Hotel 1', 5, 1, '123 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (2, 'Hotel 2', 4, 1, '456 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (3, 'Hotel 3', 3, 1, '789 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (4, 'Hotel 4', 2, 1, '101 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (5, 'Hotel 5', 1, 1, '102 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (6, 'Hotel 6', 5, 2, '123 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (7, 'Hotel 7', 4, 2, '456 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (8, 'Hotel 8', 3, 2, '789 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (9, 'Hotel 9', 2, 2, '101 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (10, 'Hotel 10', 1, 2, '102 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (11, 'Hotel 11', 5, 3, '123 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (12, 'Hotel 12', 4, 3, '456 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (13, 'Hotel 13', 3, 3, '789 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (14, 'Hotel 14', 2, 3, '101 Main Street', '123456789');
INSERT INTO hotels (id, name, stars, city_id, address, phone_number) VALUES (15, 'Hotel 15', 1, 3, '102 Main Street', '123456789');

select * from hotels;

/* Insert data into the packages table id transport_type hotel_id start_date end_date price number_of_people room_name employee_id */
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (1, 'Plane', 1, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (2, 'Plane', 2, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (3, 'Plane', 3, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (4, 'Plane', 4, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (5, 'Plane', 5, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (6, 'Plane', 6, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (7, 'Plane', 7, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (8, 'Plane', 8, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (9, 'Plane', 9, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 1);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (10, 'Plane', 10, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (11, 'Plane', 11, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (12, 'Plane', 12, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (13, 'Plane', 13, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (14, 'Car', 14, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (15, 'Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (16, 'Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (17, 'Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (18, 'Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);
INSERT INTO packages (id, transport_type, hotel_id, start_date, end_date, price, number_of_people, room_name, employee_id) VALUES (19, 'Car', 15, '2022-01-01 00:00:00', '2022-01-02 00:00:00', 100, 2, 'Double', 2);

select * from packages;

/* Insert data into the clients table id name email phone_number generated_from first_employee_id */
INSERT INTO clients (id, name, email, phone_number, generated_from, first_employee_id) VALUES (1, 'John Doe', 'test@test.com', '123456789', 'Website', 1);
INSERT INTO clients (id, name, email, phone_number, generated_from, first_employee_id) VALUES (2, 'Jane Doe', 'test@test.com', '123456789', 'Website', 1);
INSERT INTO clients (id, name, email, phone_number, generated_from, first_employee_id) VALUES (3, 'John Smith', 'test@test.com', '123456789', 'Website', 1);
INSERT INTO clients (id, name, email, phone_number, generated_from, first_employee_id) VALUES (4, 'Jane Doe', 'test@test.com', '123456789', 'Website', 1);
INSERT INTO clients (id, name, email, phone_number, generated_from, first_employee_id) VALUES (5, 'John X', 'test@test.com', '123456789', 'Website', 1);
INSERT INTO clients (id, name, email, phone_number, generated_from, first_employee_id) VALUES (6, 'Jane Smith', 'test@test.com', '123456789', 'Website', 1);

select * from clients;


/* Insert data into the offers table id client_id package_id final_price employee_id status */
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (1, 1, 1, 100, 1, 'Pending');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (2, 2, 2, 100, 1, 'Pending');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (3, 3, 3, 100, 1, 'Pending');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (4, 4, 4, 100, 1, 'Pending');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (5, 5, 5, 100, 1, 'Done');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (6, 6, 6, 100, 1, 'Done');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (7, 1, 7, 100, 1, 'Done');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (8, 2, 8, 100, 1, 'Done');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (9, 3, 9, 100, 1, 'Done');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (10, 4, 10, 100, 1, 'Done');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (11, 5, 11, 100, 1, 'Done');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (12, 6, 12, 100, 1, 'Pending');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (13, 1, 13, 100, 1, 'Pending');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (14, 2, 14, 100, 1, 'Pending');
INSERT INTO offers (id, client_id, package_id, final_price, employee_id, status) VALUES (15, 3, 15, 100, 1, 'Pending');

select * from offers;