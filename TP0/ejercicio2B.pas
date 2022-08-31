//Modifique el programa anterior para que el mensaje de salida muestre la suma de ambos
//números.

//b. Sin utilizar una variable adicional.

program ejercicio2B;
var
	num1, num2: integer;
begin
	writeln('Ingrese primer numero:');
	readln(num1);
	writeln('Ingrese segundo numero:');
	readln(num2);
	writeln('La suma de los numeros es ', (num1+num2));
end.
