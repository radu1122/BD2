USE tourism_db
GO

CREATE OR ALTER FUNCTION dbo.GET_ALL_PACKAGES_BY_EMP_ID
(@EmpId INT)
RETURNS TABLE
    RETURN (
        SELECT
            p.id AS package_id,
            p.transport_type,
            p.start_date,
            p.end_date,
            p.price,
            p.number_of_people,
            p.room_name,
            h.name AS hotel_name,
            h.stars AS hotel_stars,
            h.address AS hotel_address,
            h.phone_number AS hotel_phone_number,
            city.name AS city_name,
            country.name AS country_name,
            e.name AS employee_name,
            e.phone_number AS employee_phone_number,
            e.email AS employee_email,
            e.job_title AS employee_job_title
        FROM
            dbo.packages p,
            dbo.hotels h,
            dbo.cities city,
            dbo.countries country,
            dbo.employees e
        WHERE
            employee_id = @EmpId
            AND p.hotel_id = h.id
            AND h.city_id = city.id
            AND city.country_id = country.id
            AND e.id = @EmpId

    )
GO


SELECT * FROM dbo.GET_ALL_PACKAGES_BY_EMP_ID(1);
GO


CREATE OR ALTER FUNCTION dbo.GET_ALL_OFFERS_BY_STATUS
(@Status NVARCHAR(255))
RETURNS TABLE
    RETURN (
        SELECT
            o.id AS offer_id,
            o.final_price,
            o.status,
            e.name AS employee_name,
            e.phone_number AS employee_phone_number,
            e.email AS employee_email,
            e.job_title AS employee_job_title,
            c.name AS customer_name,
            c.phone_number AS customer_phone_number,
            c.email AS customer_email,
            e2.name AS first_interaction_employee_name,
            e2.phone_number AS first_interaction_employee_phone_number,
            p.room_name AS package_room_name,
            p.number_of_people,
            p.start_date,
            p.end_date,
            p.price,
            p.transport_type,
            h.name AS hotel_name,
            h.stars AS hotel_stars,
            h.address AS hotel_address,
            h.phone_number AS hotel_phone_number,
            city.name AS city_name,
            country.name AS country_name
        FROM
            dbo.offers o,
            dbo.employees e,
            dbo.clients c,
            dbo.employees e2,
            dbo.packages p,
            dbo.hotels h,
            dbo.cities city,
            dbo.countries country
        WHERE
            o.status = @Status
            AND o.employee_id = e.id
            AND o.client_id = c.id
            AND c.first_employee_id = e2.id
            AND o.package_id = p.id
            AND p.hotel_id = h.id
            AND h.city_id = city.id
            AND city.country_id = country.id
    )
GO

SELECT * FROM dbo.GET_ALL_OFFERS_BY_STATUS('Pending');
GO


CREATE OR ALTER FUNCTION dbo.GET_ALL_OFFERS_BY_STARS
(@Stars INT)
RETURNS TABLE
    RETURN (
        SELECT
            o.id AS offer_id,
            h.stars AS hotel_stars,
            o.final_price,
            o.status,
            e.name AS employee_name,
            e.phone_number AS employee_phone_number,
            e.email AS employee_email,
            e.job_title AS employee_job_title,
            c.name AS customer_name,
            c.phone_number AS customer_phone_number,
            c.email AS customer_email,
            e2.name AS first_interaction_employee_name,
            e2.phone_number AS first_interaction_employee_phone_number,
            p.room_name AS package_room_name,
            p.number_of_people,
            p.start_date,
            p.end_date,
            p.price,
            p.transport_type,
            h.name AS hotel_name,
            h.address AS hotel_address,
            h.phone_number AS hotel_phone_number,
            city.name AS city_name,
            country.name AS country_name
        FROM
            dbo.offers o,
            dbo.employees e,
            dbo.clients c,
            dbo.employees e2,
            dbo.packages p,
            dbo.hotels h,
            dbo.cities city,
            dbo.countries country
        WHERE
            h.stars = @Stars
            AND o.employee_id = e.id
            AND o.client_id = c.id
            AND c.first_employee_id = e2.id
            AND o.package_id = p.id
            AND p.hotel_id = h.id
            AND h.city_id = city.id
            AND city.country_id = country.id
    )
GO

SELECT * FROM dbo.GET_ALL_OFFERS_BY_STARS(5);
GO


CREATE OR ALTER FUNCTION dbo.GET_SUBORDINATES_WITH_LOWER_SALARY
(@ManagerId INT, @Salary REAL = NULL)
RETURNS INT AS
BEGIN

    DECLARE @result INT;

    SELECT @result = COUNT(*)
    FROM tourism_db.dbo.employees;

    RETURN @result;
END
GO

/* call the function and print the result */
SELECT dbo.GET_SUBORDINATES_WITH_LOWER_SALARY(1, 1000);
