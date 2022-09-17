program ejercicio7;
type
	tCentro = record
		nombre: string;
		universidad: string;
		investigadores: integer;
		becarios: integer;
	end;
procedure leerCentro(var c: tCentro);
begin
	write('Nombre: ');
	readln(c.nombre);
	write('Universidad: ');
	readln(c.universidad);
	write('Cantidad de investigadores: ');
	readln(c.investigadores);
	if(c.investigadores <> 0)then begin
		write('Cantidad de becarios: ');
		readln(c.becarios);
	end;
	writeln(' ');
end;
procedure actualizarMax(cantInvestigadores: integer; uniActual: string; var cantMax: integer; var uniMax: string);
begin
	if(cantInvestigadores >= cantMax)then begin
		cantMax:= cantInvestigadores;
		uniMax:= uniActual;
	end;
end;
procedure actualizarMin(centro: tCentro; var cantMin1, cantMin2: integer; var centroMin1, centroMin2: string);
begin
	if(centro.becarios < cantMin1)then begin
		cantMin2:= cantMin1;
		cantMin1:= centro.becarios;
		centroMin2:= centroMin1;
		centroMin1:= centro.nombre;
	end
	else if(centro.becarios < cantMin2)then begin
		cantMin2:= centro.becarios;
		centroMin2:= centro.nombre;
	end;
end;
var
	centro: tCentro;
	uniActual: string;
	cantCentros: integer;
	cantInvestigadores: integer;
	cantMax: integer;
	uniMax: string;
	cantBecarios: integer;
	centroMin1, centroMin2: string;
	cantMin1, cantMin2: integer;
begin
	cantMax:= -1;
	uniMax:= ' ';
	centroMin1:= ' ';
	centroMin2:= ' ';
	cantMin1:= 9999;
	cantMin2:= 9999;
	leerCentro(centro);
	while(centro.investigadores <> 0)do begin
		uniActual:= centro.universidad;
		cantInvestigadores:= 0;
		cantBecarios:= 0;
		cantCentros:= 0;
		while(centro.universidad = uniActual)do begin
			cantCentros:= cantCentros + 1;
			cantInvestigadores:= cantInvestigadores + centro.investigadores;
			cantBecarios:= cantBecarios + centro.becarios;
			leerCentro(centro);
		end;
		writeln(uniActual, ' tiene ', cantCentros, ' centros');
		actualizarMax(cantInvestigadores, uniActual, cantMax, uniMax);
		actualizarMin(centro, cantMin1, cantMin2, centroMin1, centroMin2);
		writeln(' ');
	end;
	writeln('Universidad con mayor cantidad de investigadores: ', uniMax);
	writeln('Centros con menor cantidad de becarios: ', centroMin1, ' y ', centroMin2);
end.
