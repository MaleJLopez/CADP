program ejercicio1;
var
	num: integer;
	total: integer;
	cont: integer;
begin
	total:= 0;
	cont:= 0;
	repeat
		writeln('Ingrese un numero');
		readln(num);
		total:= total + num;
		cont:= cont + 1;
	until(cont = 10);
	writeln('La suma de los numeros es ', total)
end.
