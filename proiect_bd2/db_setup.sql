drop database if exists tourism_db;

CREATE DATABASE tourism_db;
Use tourism_db;

CREATE TABLE employees (
    "id" BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    "name" NVARCHAR(255) NOT NULL,
    "phone_number" NVARCHAR(255) NOT NULL,
    "job_title" NVARCHAR(255) NOT NULL,
    "email" NVARCHAR(255) NOT NULL,
    "created_at" date not null DEFAULT (GETDATE())
);

CREATE TABLE countries (
    "id" BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    "name" NVARCHAR(255) NOT NULL,
    "created_at" date not null DEFAULT (GETDATE())
);

CREATE TABLE cities (
    "id" BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    "name" NVARCHAR(255) NOT NULL,
    "country_id" BIGINT NOT NULL,
    "created_at" date not null DEFAULT (GETDATE())
);

CREATE TABLE hotels (
    "id" BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    "name" NVARCHAR(255) NOT NULL,
    "stars" INT NOT NULL,
    "city_id" BIGINT NOT NULL,
    "address" NVARCHAR(255) NOT NULL,
    "phone_number" NVARCHAR(255) NOT NULL,
    "created_at" date not null DEFAULT (GETDATE())
);

CREATE TABLE packages (
    "id" BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    "transport_type" NVARCHAR(255) NOT NULL,
    "hotel_id" BIGINT NOT NULL,
    "start_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "price" BIGINT NOT NULL,
    "number_of_people" BIGINT NOT NULL,
    "room_name" NVARCHAR(255) NOT NULL,
    "employee_id" BIGINT NOT NULL,
    "created_at" date not null DEFAULT (GETDATE())
);

CREATE TABLE clients (
    "id" BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    "name" NVARCHAR(255) NOT NULL,
    "email" NVARCHAR(255) NOT NULL,
    "phone_number" NVARCHAR(255) NOT NULL,
    "generated_from" NVARCHAR(255) NOT NULL,
    "first_employee_id" BIGINT NOT NULL,
    "created_at" date not null DEFAULT (GETDATE())
);

CREATE TABLE offers (
    "id" BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    "client_id" BIGINT NOT NULL,
    "package_id" BIGINT NOT NULL,
    "final_price" BIGINT NOT NULL,
    "employee_id" BIGINT NOT NULL,
    "status" NVARCHAR(255) NOT NULL,
    "created_at" date not null DEFAULT (GETDATE())
);


ALTER TABLE
    packages ADD CONSTRAINT "packages_employee_id_foreign" FOREIGN KEY("employee_id") REFERENCES "employees"("id");
ALTER TABLE
    clients ADD CONSTRAINT "clients_first_employee_id_foreign" FOREIGN KEY("first_employee_id") REFERENCES "employees"("id");
ALTER TABLE
    offers ADD CONSTRAINT "offers_employee_id_foreign" FOREIGN KEY("employee_id") REFERENCES "employees"("id");
ALTER TABLE
    cities ADD CONSTRAINT "cities_country_id_foreign" FOREIGN KEY("country_id") REFERENCES "countries"("id");
ALTER TABLE
    hotels ADD CONSTRAINT "hotels_city_id_foreign" FOREIGN KEY("city_id") REFERENCES "cities"("id");
ALTER TABLE
    packages ADD CONSTRAINT "packages_hotel_id_foreign" FOREIGN KEY("hotel_id") REFERENCES "hotels"("id");
ALTER TABLE
    offers ADD CONSTRAINT "offers_package_id_foreign" FOREIGN KEY("package_id") REFERENCES "packages"("id");
ALTER TABLE
    offers ADD CONSTRAINT "offers_client_id_foreign" FOREIGN KEY("client_id") REFERENCES "clients"("id");
