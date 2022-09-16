program ejercicio3;
type
	escuela = record
		CUE: integer;
		nombre: string;
		cantDocentes: integer;
		cantAlumnos: integer;
		localidad: string;
	end;
procedure leer(var e: escuela);
begin
	write('CUE: ');
	readln(e.CUE);
	write('Nombre: ');
	readln(e.nombre);
	write('Cantidad de docentes: ');
	readln(e.cantDocentes);
	write('Cantidad de alumnos: ');
	readln(e.cantAlumnos);
	write('Localidad: ');
	readln(e.localidad);
	writeln(' ');
end;
procedure calcularRelacion(e: escuela; var proporcion: real);
begin
	proporcion:= e.cantAlumnos / e.cantDocentes;
end;
const
	proporcionSugerida = 23.43;
var
	i: integer;
	e: escuela;
	proporcion: real;
	cantExcesoLP: integer;
	CUE1, CUE2: integer;
	nombre1, nombre2: string;
	mejor1, mejor2: real;
begin
	cantExcesoLP:= 0;
	CUE1:= 0;
	CUE2:= 0;
	nombre1:= ' ';
	nombre2:= ' ';
	mejor1:= 9999;
	mejor2:= 9999;
	for i:= 1 to 2400 do begin
		proporcion:= 0;
		leer(e);
		calcularRelacion(e, proporcion);
		if(proporcion > proporcionSugerida)AND(e.localidad = 'La Plata')then
			cantExcesoLP:= cantExcesoLP + 1;
		if(proporcion < mejor1)then begin
			mejor2:= mejor1;
			mejor1:= proporcion;
			nombre2:= nombre1;
			nombre1:= e.nombre;
			CUE2:= CUE1;
			CUE1:= e.CUE;
		end
		else if(proporcion < mejor2)then begin
			mejor2:= proporcion;
			nombre2:= e.nombre;
			CUE2:= e.CUE;
		end;
	end;
	writeln('Escuelas de La Plata con proporcion superior: ', cantExcesoLP);
	writeln('Escuelas con mejor proporcion: ', nombre1, ' ', CUE1, ' y ', nombre2, ' ', CUE2);
end.
