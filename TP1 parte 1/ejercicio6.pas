program ejercicio6;
var
	legajo: integer;
	buenPromedio: integer;
	alumnos: integer;
	destacan: integer;
	promedio: real;
	porcentaje: real;
begin
	alumnos:= 0;
	destacan:= 0;
	buenPromedio:= 0;
	writeln('Legajo:');
	readln(legajo);
	while(legajo <> -1)do
	begin
		writeln('Promedio:');
		readln(promedio);
		alumnos:= alumnos + 1;
		if(promedio > 6.5)then
		begin
			buenPromedio:= buenPromedio+1;
			if(promedio > 8.5)AND(legajo < 2500)then
				destacan:= destacan + 1
		end;
		writeln('Legajo:');
		readln(legajo);
	end;
	writeln('Hay ',alumnos,' alumnos.');
	writeln(buenPromedio, ' tienen promedio mayor a 6,5.');
	porcentaje:= (destacan * 100) / alumnos;
	writeln(porcentaje:0:0,'% destacan.');
end.
