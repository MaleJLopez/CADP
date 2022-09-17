program ejercicio8;
type
	tDocente = record
		DNI: integer;
		nombreCompleto: string;
		email: string;
	end;
	tProyecto = record
		codigo: integer;
		titulo: string;
		docente: tDocente;
		alumnos: integer;
		escuela: string;
		localidad: string;
	end;
procedure leerDocente(var d: tDocente);
begin
	write('DNI del docente: ');
	readln(d.DNI);
	write('Nombre y apellido: ');
	readln(d.nombreCompleto);
	write('Email: ');
	readln(d.email);
end;
procedure leerProyecto(var p: tProyecto; var d: tDocente);
begin
	write('Codigo: ');
	readln(p.codigo);
	write('Titulo: ');
	readln(p.titulo);
	leerDocente(d);
	write('Alumnos: ');
	readln(p.alumnos);
	write('Escuela: ');
	readln(p.escuela);
	write('Localidad: ');
	readln(p.localidad);
	writeln(' ');
end;
procedure actualizarMax(p: tProyecto; var alumnosMax1, alumnosMax2: integer; var escuelaMax1, escuelaMax2: string);
begin
	if(p.alumnos > alumnosMax1)then begin
		alumnosMax2:= alumnosMax1;
		alumnosMax1:= p.alumnos;
		escuelaMax2:= escuelaMax1;
		escuelaMax1:= p.escuela;
	end
	else if(p.alumnos > alumnosMax2)then begin
		alumnosMax2:= p.alumnos;
		escuelaMax2:= p.escuela;
	end;
end;
procedure analizarCodigo(p: tProyecto; var igualCant: boolean);
var
	numero: integer;
	digito: integer;
	pares: integer;
	impares: integer;
begin
	pares:= 0;
	impares:= 0;
	igualCant:= false;
	numero:= p.codigo;
	while(numero <> 0)do begin
		digito:= numero MOD 10;
		if(digito MOD 2 = 0)then
			pares:= pares + 1
		else
			impares:= impares + 1;
		numero:= numero DIV 10;
	end;
	if(pares = impares)then
		igualCant:= true
	else
		igualCant:= false;
end;
var
	proyecto: tProyecto;
	docente: tDocente;
	localidadActual: string;
	escuelaActual: string;
	cantTotal: integer;
	cantLocalidad: integer;
	alumnosMax1, alumnosMax2: integer;
	escuelaMax1, escuelaMax2: string;
	igualCant: boolean;
begin
	cantTotal:= 0;
	alumnosMax1:= -1;
	alumnosMax2:= -1;
	escuelaMax1:= ' ';
	escuelaMax2:= ' ';
	igualCant:= false;
	leerProyecto(proyecto, docente);
	while(proyecto.codigo <> -1)do begin
		localidadActual:= proyecto.localidad;
		cantLocalidad:= 0;
		while(proyecto.localidad = localidadActual)do begin
			cantLocalidad:= cantLocalidad + 1;
			escuelaActual:= proyecto.escuela;
			while(proyecto.escuela = escuelaActual)do begin
				cantTotal:= cantTotal + 1;
				leerProyecto(proyecto, docente);
			end;
			{termina escuela}
			actualizarMax(proyecto, alumnosMax1, alumnosMax2, escuelaMax1, escuelaMax2);
			if(proyecto.localidad = 'Daireaux')then begin
				analizarCodigo(proyecto, igualCant);
				if(igualCant)then
					writeln(proyecto.titulo, ' posee un codigo con igual cantidad de digitos pares e impares');
					writeln(' ');
				end;
		end;
		{termina localidad}
		writeln('Escuelas en ', localidadActual, ': ', cantLocalidad);
		writeln(' ');
	end;
	writeln('Total de escuelas: ', cantTotal);
	writeln('Escuelas con mas alumnos participantes: ', escuelaMax1, ' y ', escuelaMax2);
end.
