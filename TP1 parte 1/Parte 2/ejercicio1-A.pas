program ejercicio1;
var
	num: integer;
	total: integer;
	cont: integer;
	mayor5: integer;
begin
	total:= 0;
	cont:= 0;
	mayor5:= 0;
	repeat
		writeln('Ingrese un numero');
		readln(num);
		total:= total + num;
		cont:= cont + 1;
		if(num > 5)then
			mayor5:= mayor5 + 1;
	until(cont = 10);
	writeln('La suma de los numeros es ', total);
	writeln('Hay ', mayor5 ,' numeros mayores a 5.');
end.

