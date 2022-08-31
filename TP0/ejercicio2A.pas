//Modifique el programa anterior para que el mensaje de salida muestre la suma de ambos números

//a. Utilizando una variable adicional

program ejercicio2A;
var
	num1, num2, suma: integer;
begin
	suma:= 0;
	writeln('Ingrese primer numero:');
	readln(num1);
	writeln('Ingrese segundo numero:');
	readln(num2);
	suma:= num1+num2;
	writeln('La suma de los numeros es ', suma);
end.
