DROP PROCEDURE IF EXISTS ps_rectangle;

DELIMITER $$

CREATE PROCEDURE ps_rectangle(leng INT ,Width INT )

BEGIN
	DECLARE area DOUBLE DEFAULT 1;
	DECLARE perimeter DOUBLE ;
	-- DECLARE leng INT; 
	-- DECLARE Width INT ;
	-- SET leng = 5;
	-- SET Width = 10;
	SET area = leng * width;
	SET perimeter = 2 * (leng + width) ;
	SELECT leng, width,area , perimeter; 
END;

$$
DELIMITER ;
