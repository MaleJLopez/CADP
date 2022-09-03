program ejercicio5;
var
	num: integer;
	max: integer;
	min: integer;
	total: integer;
	i: integer;
begin
	max:= -1;
	min:= 9999;
	total:= 0;
	for i:= 1 to 100 do
	begin
		writeln('Ingrese un numero:');
		readln(num);
		total:= total + num;
		if(num > max)then
			max:= num;
		if(num < min)then
			min:= num;
	end;
	writeln('Numero mas chico: ', min);
	writeln('Numero mas grande: ', max);
	writeln('Suma de los numeros: ', total);
end.
