program ejercicio8;
procedure leerProducto(var precio: real; var codigo: integer; var tipo: string);
begin
	writeln('Ingrese precio:');
	readln(precio);
	writeln('Ingrese codigo:');
	readln(codigo);
	writeln('Ingrese tipo:');
	readln(tipo);
end;
procedure actualizarBarato(precio: real; codigo: integer; var codigo1, codigo2: integer; var masBarato1, masBarato2: real);
begin
	if(precio < masbarato1)then begin
		masBarato2:= masBarato1;
		masBarato1:= precio;
		codigo2:= codigo1;
		codigo1:= codigo;
	end
	else if(precio < masbarato2)then begin
		masBarato2:= precio;
		codigo2:= codigo;
	end;
end;
procedure actualizarPantalon(precio: real; codigo: integer; var pantalonCod: integer; var pantalonCaro: real);
begin
	if(precio > pantalonCaro)then begin
		pantalonCaro:= precio;
		pantalonCod:= codigo;
	end
end;
var
	i: integer;
	precio, sumaPrecios: real;
	codigo: integer;
	tipo: string;
	masBarato1, masBarato2: real;
	codigo1, codigo2: integer;
	pantalonCaro: real;
	pantalonCod: integer;
begin
	masBarato1:= 99999;
	masBarato2:= 99999;
	sumaPrecios:= 0;
	pantalonCaro:= 0;
	for i:= 1 to 4 do begin
		leerProducto(precio, codigo, tipo);
		sumaPrecios:= sumaPrecios + precio;
		actualizarBarato(precio, codigo, codigo1, codigo2, masBarato1, masBarato2);
		if(tipo = 'pantalon')then
			actualizarPantalon(precio, codigo, pantalonCod, pantalonCaro);
	end;
	writeln(' ');
	writeln('Productos mas baratos: ',codigo1, ' y ', codigo2);
	writeln('Pantalon mas caro: ', pantalonCod, ' de $', pantalonCaro:0:0);
	writeln('Precio promedio: $', (sumaPrecios/4):0:0);
end.
	
