program ejercicio2;
type
	fecha = record
		dia: integer;
		mes: integer;
		anio: integer;
	end;
procedure leer(var f : fecha);
begin
	write('Anio: ');
	readln(f.anio);
	if(f.anio <> 2020)then begin
		write('Dia: ');
		readln(f.dia);
		write('Mes: ');
		readln(f.mes);
		writeln(' ');
	end;
end;
var
	f: fecha;
	cantVerano: integer;
	cantPrimerosDias: integer;
begin
	cantVerano:= 0;
	cantPrimerosDias:= 0;
	leer(f);
	while(f.anio <> 2020)do begin
		if(f.mes = 1)OR(f.mes = 2)OR(f.mes = 3)then
			cantVerano:= cantVerano + 1;
		if(f.dia > 0)AND(f.dia < 11)then
			cantPrimerosDias:= cantPrimerosDias + 1;
		leer(f);
	end;
	writeln('Cantidad en verano: ', cantVerano);
	writeln('Cantidad en los primeros 10 dias: ', cantPrimerosDias);
end.
