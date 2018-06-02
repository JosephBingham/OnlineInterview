BEGIN LOC REAL x, y, z;
	print("x: ");
	read(x); 
	print("y: ");
	read(y);
	z := (x + y)/2 - sqrt(x * y);
	print("z: ");
	print((z, new line))
END
