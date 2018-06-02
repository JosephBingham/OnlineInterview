PROC print root = (INT ind, LONG COMPL x)VOID:
(
	print(("x", ind, " := "));
	IF ABS(im OF x) < 1E-6 THEN
		print((re OF x, new line))
	ELSE print((x, new line))
	FI
);

main:
(
	INT x;
	INT y;
	read(x);
	read(y);
	print root(x, y)
)
