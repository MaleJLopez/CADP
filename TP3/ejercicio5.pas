program ejercicio5;
type
	tAuto = record
		marca: string;
		modelo: string;
		precio: real;
	end;
procedure leerAuto(var a: tAuto);
begin
	write('Marca: ');
	readln(a.marca);
	if(a.marca <> 'ZZZ')then begin
		write('Modelo: ');
		readln(a.modelo);
		write('Precio: ');
		readln(a.precio);
		writeln(' ');
	end;
end;
procedure actualizarMax(a: tAuto; var marcaMax, modeloMax: string; var precioMax: real);
begin
	if(a.precio >= precioMax)then begin
		precioMax:= a.precio;
		marcaMax:= a.marca;
		modeloMax:= a.modelo;
	end;
end;
var
	auto: tAuto;
	marcaActual: string;
	precioMax: real;
	marcaMax, modeloMax: string;
	promedio: real;
	cantAutos: integer;
	sumaPrecios: real;
begin
	precioMax:= -1;
	marcaMax:= ' ';
	modeloMax:= ' ';
	leerAuto(auto);
	while(auto.marca <> 'ZZZ')do begin
		marcaActual:= auto.marca;
		cantAutos:= 0;
		sumaPrecios:= 0;
		while(auto.marca = marcaActual)do begin
			cantAutos:= cantAutos + 1;
			sumaPrecios:= sumaPrecios + auto.precio;
			leerAuto(auto);
		end;
		promedio:= sumaPrecios/cantAutos;
		writeln('Precio promedio de ', marcaActual, ': ', (promedio):0:0);
		writeln(' ');
		actualizarMax(auto, marcaMax, modeloMax, precioMax);
	end;
	writeln('Auto mas caro: ', marcaMax, ' ', modeloMax);
end.
