/*

1.  \d hmolicense
    The primary key of the table is objectID, 
    as it says this at the bottom and in the table 
    description it says it cannot be null.
 
*/

-- Question 2:
SELECT license_number
FROM hmolicense
WHERE occupant_capacity > number_of_bedrooms; 

-- Question 3:
SELECT expiry_date, living_accommodation
FROM hmolicense
WHERE expiry_date >= '01-Jan-2023' 
AND expiry_date < '01-Jan-2024';

-- Question 4:
SELECT license_number, ward, occupant_capacity
FROM hmolicense
WHERE licence_holder LIKE '%Strathclyde%';

-- Question 5:
CREATE OR REPLACE FUNCTION add_rooms()
RETURNS hmolicense.number_of_bedrooms%TYPE AS

$$

DECLARE
   bedrooms hmolicense.number_of_bedrooms%TYPE;
   total hmolicense.number_of_bedrooms%TYPE;
   num CURSOR FOR select number_of_bedrooms from hmolicense where number_of_bedrooms IS NOT NULL;

BEGIN
 total = 0;
 OPEN num;
  LOOP 
  FETCH num INTO bedrooms;
    EXIT WHEN NOT FOUND; 
  total = total + bedrooms;
  END LOOP; 
 CLOSE num; 
 RETURN total;
END;
$$

LANGUAGE 'plpgsql';
