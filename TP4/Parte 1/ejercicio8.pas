program ejercicio8;
const
	total = 400;
type
	alumno = record
		num: integer;
		DNI: integer;
		nom: string;
		ape: string;
		anoNac: integer;
	end;
	ingresantes = array [1..total] of alumno;
procedure leerAlumno(var a: alumno);
begin
	write('Numero de inscripcion: ');
	readln(a.num);
	write('DNI: ');
	readln(a.DNI);
	write('Nombre: ');
	readln(a.nom);
	write('Apellido: ');
	readln(a.ape);
	write('Ano de nacimiento: ');
	readln(a.anoNac);
	writeln(' ');
end;
function esPar(num: integer):boolean;
begin
	esPar:= (num MOD 2 = 0);
end;
procedure analizarDNI(a: alumno; var todosPares: boolean);
var
	num, dig: integer;
begin
	num:= a.DNI;
	todosPares:= true;
	while(num <> 0)AND(todosPares = true)do begin
		dig:= num MOD 10;
		if(esPar(dig))then
			todosPares:= true
		else
			todosPares:= false;
			num:= 0;
		num:= num DIV 10;
	end;
end;
procedure actualizarMayor(a: alumno; var max1, max2: integer; var nom1, nom2, ape1, ape2: string);
begin
	if(a.anoNac < max1)then begin
		max2:= max1;
		max1:= a.anoNac;
		nom2:= nom1;
		nom1:= a.nom;
		ape2:= ape1;
		ape1:= a.ape;
	end
	else if(a.anoNac < max2)then begin
		max2:= a.anoNac;
		nom2:= a.nom;
		ape2:= a.ape;
	end;
end;
var
	i: integer;
	v: ingresantes;
	a: alumno;
	todosPares: boolean;
	pares: integer;
	max1, max2: integer;
	nom1, nom2: string;
	ape1, ape2: string;
	porcentaje: real;
begin
	todosPares:= true;
	pares:= 0;
	porcentaje:= 0;
	max1:= 2020;
	max2:= 2020;
	nom1:= ' ';
	nom2:= ' ';
	ape1:= ' ';
	ape2:= ' ';
	for i:= 1 to 400 do begin
		leerAlumno(a);
		v[i]:= a;
		analizarDNI(v[i], todosPares);
		if(todosPares = true)then
			pares:= pares + 1;
		actualizarMayor(v[i], max1, max2, nom1, nom2, ape1, ape2);
	end;
	porcentaje:= (pares*100)/total;
	writeln('Porcentaje con DNI con todos digitos pares: ', (porcentaje):0:0, '%');
	writeln('Alumnos mayores: ', nom1, ' ', ape1, ' y ', nom2, ' ', ape2);
end.
