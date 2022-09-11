program ejercicio11;
procedure leerAlumno(var nombre, apellido: string; var numInscripcion: integer);
begin
	write('Nombre: ');
	readln(nombre);
	write('Apellido: ');
	readln(apellido);
	write('Numero de inscripcion: ');
	readln(numInscripcion);
	writeln(' ');
end;
procedure actualizarMasChico(numInscripcion: integer; apellido: string; var masChico1, masChico2: integer; var apellido1, apellido2: string);
begin
	if(numInscripcion < masChico1)then begin
		masChico2:= masChico1;
		masChico1:= numInscripcion;
		apellido2:= apellido1;
		apellido1:= apellido;
	end
	else if(numInscripcion < masChico2)then begin
		masChico2:= numInscripcion;
		apellido2:= apellido;
	end;
end;
procedure actualizarMasGrande(numInscripcion: integer; nombre: string; var masGrande1, masGrande2: integer; var nombre1, nombre2: string);
begin
	if(numInscripcion > masGrande1)then begin
		masGrande2:= masGrande1;
		masGrande1:= numInscripcion;
		nombre2:= nombre1;
		nombre1:= nombre;
	end
	else if(numInscripcion > masGrande2)then begin
		masGrande2:= numInscripcion;
		nombre2:= nombre;
	end;
end;
function esPar(numInscripcion: integer): boolean;
begin
	esPar:= (numInscripcion MOD 2) = 0;
end;
procedure analizarNumero(numInscripcion: integer; var totalPares: integer);
begin
	if(esPar(numInscripcion))then
		totalPares:= totalPares+1;
end;
var
	nombre, apellido: string;
	numInscripcion: integer;
	
	masChico1, masChico2: integer;
	apellido1, apellido2: string;
	
	masGrande1, masGrande2: integer;
	nombre1, nombre2: string;
	
	totalAlumnos: integer;
	totalPares: integer;
	porcentaje: real;
begin
	totalAlumnos:= 0;
	totalPares:= 0;
	masChico1:= 9999;
	masChico2:= 9999;
	masGrande1:= -1;
	masGrande2:= -1;
	repeat
		leerAlumno(nombre, apellido, numInscripcion);
		totalAlumnos:= totalAlumnos +1;
		actualizarMasChico(numInscripcion, apellido, masChico1, masChico2, apellido1, apellido2);
		actualizarMasGrande(numInscripcion, nombre, masGrande1, masGrande2, nombre1, nombre2);
		analizarNumero(numInscripcion, totalPares);
	until(numInscripcion = 1200);
	writeln('Alumnos con numero de inscripcion mas chico: ', apellido1, ' y ', apellido2);
	writeln('Alumnos con numero de inscripcion mas grande: ', nombre1, ' y ', nombre2);
	porcentaje:= (totalPares*100) / totalAlumnos;
	writeln('Alumnos con numero de inscripcion par: ', (porcentaje):0:0, '%');
end.
