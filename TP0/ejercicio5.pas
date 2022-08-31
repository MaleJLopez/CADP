//Un kiosquero debe vender una cantidad X de caramelos entre Y clientes, dividiendo cantidades
//iguales entre todos los clientes. Los que le sobren se los quedará para él.
//Lea la cantidad de caramelos que posee el kiosquero (X), la
//cantidad de clientes (Y), e imprima en pantalla un mensaje informando la cantidad de
//caramelos que le corresponderá a cada cliente, y la cantidad de caramelos que se
//quedará para sí mismo.
//Imprima en pantalla el dinero que deberá cobrar el kiosquero si cada caramelo tiene un
//valor de $1.60.

program ejercicio5;
const
	precio=1.60;
var
	cantCaramelos, cantClientes: integer;
begin
	writeln('Ingrese cantidad de caramelos:');
	readln(cantCaramelos);
	writeln('Ingrese cantidad de clientes:');
	readln(cantClientes);
	writeln('Le corresponden ', (cantCaramelos DIV cantClientes), ' caramelos a cada cliente.');
	writeln('Le corresponden ', (cantCaramelos MOD cantClientes), ' caramelos al kiosquero.');
	writeln('El kiosquero cobra $', (cantCaramelos*precio):0:2);
end.
