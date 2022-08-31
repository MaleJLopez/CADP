program uno;
var
	num1, num2: integer;
begin
	writeln('Ingrese primer numero:');
	readln(num1);
	writeln('Ingrese segundo numero:');
	readln(num2);
	if(num1 > num2) then
		writeln('El primer numero es mayor.')
	else if(num2 > num1) then
		writeln('El segundo numero es mayor.')
	else
		writeln('Los numeros son iguales.');
end.
