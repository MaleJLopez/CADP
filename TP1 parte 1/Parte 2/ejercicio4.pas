program ejercicio4;
var
	num: integer;
	cont: integer;
	min1: integer;
	min2: integer;
	i: integer;
begin
	cont:= 0;
	min1:= 9999;
	min2:= 9999;
	for i:= 1 to 1000 do
	begin
		writeln('Ingrese un numero:');
		readln(num);
		cont:= cont + 1;
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
