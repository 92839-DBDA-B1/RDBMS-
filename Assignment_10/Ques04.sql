-- 4.Create a procedure to Convert a number of inches into yards, feet, and inches. For example, 124 inches equals 3 yards, 1 foot, and 4 inches.

DROP PROCEDURE IF EXISTS ps_scale ;

DELIMITER $$ 

CREATE PROCEDURE ps_scale(num INT)
BEGIN
	DECLARE num2 INT DEFAULT num ;
	DECLARE yards INT DEFAULT 0;
	
	DECLARE feets INT DEFAULT 0;
	DECLARE inches INT DEFAULT 0;
	SET yards = num2 DIV 36 ;
	SET num2 = num2 % 36 ;
	SET feets = num2 DIV 12 ;
	SET num2 = num2 % 12 ;
	SET inches = num2 ;
	SELECT num , yards, feets, inches ;


END;

$$
DELIMITER ;
