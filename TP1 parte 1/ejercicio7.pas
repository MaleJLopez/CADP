program ejercicio7;
var
	codigo: integer;
	precioActual: real;
	precioNuevo: real;
	aumento: real;
	supera: boolean;
begin
	repeat
	begin
		writeln('Codigo del producto:');
		readln(codigo);
		writeln('Precio actual:');
		readln(precioActual);
		writeln('Precio nuevo:');
		readln(precioNuevo);
		aumento:= ((precioNuevo - precioActual) * 100) / precioActual;
		supera:= aumento > 10;
		if(supera)then
			writeln('El aumento es superior al 10%.')
		else
			writeln('El aumento no supera el 10%.');
	end	
	until(codigo = 32767);
end.
