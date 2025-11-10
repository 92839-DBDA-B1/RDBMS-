/* 
3.Create a procedure to Convert a temperature in Fahrenheit (F) to its
equivalent in Celsius (C) and vice versa. The required formulae are:-
C= (F-32)*5/9 F= 9/5*C + 32 
*/

DROP PROCEDURE IF EXISTS ps_temperature;

DELIMITER $$

CREATE PROCEDURE ps_temperature(temp INT, unit VARCHAR(10))
BEGIN
	DECLARE result INT;
	
	IF unit = 'C' THEN
		SET result = 9/5 * temp + 32;
		SELECT result AS Celsius_To_Fahrenheit;
	ELSE
		SET result = (temp - 32) * 5/9;
		SELECT result AS Fahrenheit_To_Celsius;
	END IF;
END;

$$

DELIMITER ;
	






