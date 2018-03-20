PROGRAM stringreverse
	IMPLICIT NONE
	CHARACTER(80) :: string
	INTEGER :: i 
	PRINT *, "String :"
	READ *, string
	FORALL (i=1:len(string)) string(i:i) = string(len(string)-i+1:len(string)-i+1)
	PRINT *, string
end PROGRAM stringreverse