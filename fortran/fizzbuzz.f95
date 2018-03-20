PROGRAM fizzbuzz
	IMPLICIT NONE
	INTEGER :: I
	DO I =  0, 99
		IF(MOD(I, 15) == 0) THEN 
			PRINT *, "FIZZBUZZ"
		ELSEIF(MOD(I, 5) == 0) THEN
			PRINT *, "BUZZ"
		ELSEIF(MOD(I, 3) == 0) THEN
			PRINT *, "FIZZ"
		ELSE
			PRINT *, I
		END IF
	END DO
END PROGRAM fizzbuzz