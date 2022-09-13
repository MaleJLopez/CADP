program Registros;
type
	str20 = string[20];
	alumno = record
		codigo : integer;
		nombre : str20;
		promedio : real;
end;
procedure leer(var alu : alumno);
begin
	write('Ingrese el codigo del alumno ');
	readln(alu.codigo);
	if (alu.codigo <> 0) then begin
		write('Ingrese el nombre del alumno '); readln(alu.nombre);
		write('Ingrese el promedio del alumno '); readln(alu.promedio);
	end;
end;
var
	a : alumno;
	mejor : alumno;
	total : integer;
begin
	total:= 0;
	mejor.promedio:= -1;
	leer(a);
	while(a.codigo <> 0)do begin
		total:= total + 1;
		if(a.promedio > mejor.promedio)then begin
			mejor.promedio:= a.promedio;
			mejor.nombre:= a.nombre;
		end;
		leer(a);
	end;
	writeln('Total de alumnos: ', total);
	writeln('Mejor promedio: ', mejor.nombre);
end.
