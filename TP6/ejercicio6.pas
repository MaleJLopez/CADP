program ejercicio6;
type
	sonda = record
		nombre: string;
		duracion: integer;
		costoConst: real;
		costoMant: real;
		rango: integer;
	end;
	lista = ^nodo;
	nodo = record
		dato: sonda;
		sig: lista;
	end;
	vector = array[1..7] of integer;
procedure leerSonda(var s: sonda);
begin
	write('Nombre: ');
	readln(s.nombre);
	write('Duracion estimada: ');
	readln(s.duracion);
	write('Costo de construccion: ');
	readln(s.costoConst);
	write('Costo de mantenimiento mensual: ');
	readln(s.costoMant);
	write('Rango del espectro electromagnetico: ');
	readln(s.rango);
	writeln(' ');
end;
procedure agregar(var L: lista; s: sonda);
var
	nue: lista;
begin
	new(nue);
	nue^.dato:= s;
	nue^.sig:= L;
	L:= nue;
end;
var
	L: lista;
	s: sonda;
	i: integer;
	rangos: vector;
	max: real;
	maxNombre: string;
	costoSonda: real;
	totalDuracion: integer;
	totalCosto: real;
	totalSondas: integer;
	promDuracion: integer;
	promCosto: real;
	cantMasDuracion: integer;
begin
	max:= -1;
	costoSonda:= 0;
	totalSondas:= 0;
	totalDuracion:= 0;
	totalCosto:= 0;
	promDuracion:= 0;
	promCosto:= 0;
	cantMasDuracion:= 0;
	repeat
		leerSonda(s);
		agregar(L, s);
		totalSondas:= totalSondas + 1;
	until(s.nombre = 'GAIA');
	for i:= 1 to 7 do
		rangos[i]:= 0;
	while(L <> nil)do begin
		costoSonda:= L^.dato.costoConst + L^.dato.costoMant;
		if(costoSonda > max)then begin
			max:= costoSonda;
			maxNombre:= L^.dato.nombre;
		end;
		rangos[L^.dato.rango]:= rangos[L^.dato.rango] + 1;
		totalDuracion:= totalDuracion + L^.dato.duracion;
		totalCosto:= totalCosto + costoSonda;
		L:= L^.sig;
	end;
	writeln('Sonda mas cara: ', maxNombre);
	writeln('Cantidad de sondas para cada rango: ');
	for i:= 1 to 7 do
		writeln(i, ' = ', rangos[i]);
	writeln(' ');
	promDuracion:= totalDuracion DIV totalSondas;
	promCosto:= totalCosto/totalSondas;
	while(L <> nil)do begin
		if(L^.dato.duracion > promDuracion)then
			cantMasDuracion:= cantMasDuracion + 1;
		if((L^.dato.costoConst + L^.dato.costoMant) > promCosto)then
			writeln(L^.dato.nombre, ' supera el costo promedio');
		L:= L^.sig;
	end;
	writeln('Sondas que superan el promedio de duracion: ' , cantMasDuracion);
end.
