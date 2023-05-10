--Function to change customer email.
CREATE OR REPLACE FUNCTION change_customer_email( 
	_customer_id INTEGER
	new_email VARCHAR(150)
)
RETURNS VARCHAR(150) AS 
$$
	BEGIN 
		UPDATE customer 
		SET email = new_email
		WHERE customer_id = _customer_id;
		RETURN new_email;
	END;
$$
LANGUAGE plpgsql;

SELECT change_customer_email(1, 'newfredwilson@fake.com');

-- Procedure to find city of each customer
CREATE PROCEDURE SelectAllCustomers City Varchar(30)
BEGIN
SELECT * FROM Customers WHERE City = City
END;