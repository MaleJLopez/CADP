//Lea dos números reales e imprima el resultado de la división de los mismos
//con una precisión de dos decimales.

program ejercicio3;
var
	num1, num2: real;
begin
	writeln('Ingrese primer numero:');
	readln(num1);
	writeln('Ingrese segundo numero:');
	readln(num2);
	writeln('El resultado es ', (num1/num2):0:2);
end.
