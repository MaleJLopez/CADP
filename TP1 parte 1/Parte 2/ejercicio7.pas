program ejercicio7;
var
	nombre: string;
	tiempo: real;
	primero: real;
	segundo: real;
	ultimo: real;
	anteUltimo: real;
	nomPrimero: string;
	nomSegundo: string;
	nomUltimo: string;
	nomAnteUltimo: string;
	i: integer;
begin
	primero:= 9999.99;
	segundo:= 9999.99;
	ultimo:= -1;
	anteUltimo:= -1;
	nomPrimero:= '-';
	nomSegundo:= '-';
	nomUltimo:= '-';
	nomAnteUltimo:= '-';
	for i:= 1 to 5 do
	begin
		write('Nombre del piloto: ');
		readln(nombre);
		write('Tiempo logrado: ');
		readln(tiempo);
		if(tiempo < primero)then
		begin
			segundo:= primero;
			primero:= tiempo;
			nomSegundo:= nomPrimero;
			nomPrimero:= nombre;
		end
		else if(tiempo < segundo)then
		begin
			segundo:= tiempo;
			nomSegundo:= nombre;
		end;
		if(tiempo > ultimo)then
		begin
			anteUltimo:= ultimo;
			ultimo:= tiempo;
			nomAnteUltimo:= nomUltimo;
			nomUltimo:= nombre;
		end
		else if(tiempo > anteUltimo)then
		begin
			anteUltimo:= tiempo;
			nomAnteUltimo:= nombre;
		end;
	end;
	writeln(' ');
	writeln('Primer lugar: ', nomPrimero);
	writeln('Segundo lugar: ', nomSegundo);
	writeln('Ultimo lugar: ', nomUltimo);
	writeln('Anteultimo lugar: ', nomAnteUltimo);
end.
