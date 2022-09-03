program ejercicio2;
var
	num: integer;
	max: integer;
	cont: integer;
	pos: integer;
begin
	max:= -1;
	cont:= 0;
	repeat
		writeln('Ingrese un numero:');
		readln(num);
		cont:= cont + 1;
		if(num > max)then
			max:= num;
			pos:= cont;
	until(cont = 10);
	writeln('El mayor numero es ', max, ' en la posicion ', pos);
end.
