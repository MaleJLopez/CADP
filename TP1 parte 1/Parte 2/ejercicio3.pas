program ejercicio3;
type
	tnota = 1..10;
var
	nombre: char;
	nota: tnota;
	aprobados: integer;
	siete: integer;
begin
	aprobados:= 0;
	siete:= 0;
	repeat
		writeln('Nombre del alumno:');
		readln(nombre);
		writeln('Nota de EPA:');
		readln(nota);
		if(nota = 7)then
			siete:= siete+1;
		if(nota >= 8)then
			aprobados:= aprobados + 1;
	until(nombre = 'Zidane Zinedine');
	writeln('Hay ', aprobados, ' alumnos aprobados y ', siete, ' que sacaron 7.');
end.
