//Informe el valor total en pesos de una transacción en dólares.
//Debe leer el monto total en dólares de la transacción, el valor del dólar al día
//de la fecha y el porcentaje (en pesos) de la comisión que cobra el banco por la transacción. 

program ejercicio6;
var
	montoDolar, valorDolar, comision: real;
begin
	writeln('Ingrese el monto en dolares:');
	readln(montoDolar);
	writeln('Ingrese el valor del dolar:');
	readln(valorDolar);
	writeln('Ingrese comision del banco:');
	readln(comision);
	writeln('La transaccion es de ', (montoDolar*valorDolar+100/comision):0:2, ' pesos argentinos.');
end.
