
-- 5. Your block should read in two real numbers and tell whether the product of the two numbers is equal to or greater than 100.

DROP PROCEDURE IF EXISTS ps_product ;

DELIMITER $$

CREATE PROCEDURE ps_product(num1 INT , num2 INT )
BEGIN
	DECLARE product INT DEFAULT 0;
	DECLARE flag INT DEFAULT 0;
	SET product = num1 * num2 ;
	IF product >= 100 
	THEN
		SET flag = 1;
	END IF;
	SELECT IF (flag,'GREATER OR EQUAL' , 'LESSER' ) AS RESULT ;

END;

$$
DELIMITER ;
