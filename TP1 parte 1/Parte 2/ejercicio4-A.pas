program ejercicio4;
var
	num: integer;
	min1: integer;
	min2: integer;
begin
	min1:= 9999;
	min2:= 9999;
	repeat
		writeln('Ingrese un numero:');
		readln(num);
		if(num < min1)then
		begin
			min2:= min1;
			min1:= num;
		end
		else if (num < min2)then
			min2:= num;
	until(num = 0);
	writeln('Numeros mas chicos: ', min1, ' y ', min2);
end.
