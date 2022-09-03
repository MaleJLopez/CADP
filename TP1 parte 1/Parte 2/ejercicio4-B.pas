program ejercicio4;
var
	num: integer;
	min1: integer;
	min2: integer;
begin
	min1:= 9999;
	min2:= 9999;
	writeln('Ingrese un numero:');
	readln(num);
	while(num <> 0)do
	begin
		writeln('Ingrese un numero:');
		readln(num);
		if(num < min1)then
		begin
			min2:= min1;
			min1:= num;
		end
		else if (num < min2)then
			min2:= num;
	end;
	writeln('Numeros mas chicos: ', min1, ' y ', min2);
end.

