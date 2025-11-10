
DROP PROCEDURE IF EXISTS ps_sqr_cube ;
DELIMITER $$

CREATE PROCEDURE ps_sqr_cube(num INT)
BEGIN
	-- DECLARE num1 INT;
	-- SET num1 = 5 ;
	INSERT INTO temp VALUES 
	(num, num*num, num*num*num);
END;

$$
DELIMITER ;



