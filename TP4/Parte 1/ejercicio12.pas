program ejercicio12;
type
	galaxia = record
		nombre: string;
		tipo: string;
		masa: real;
		dist: real;
	end;
	grupoLocal = array [1..53] of galaxia;
procedure leerGalaxia(var g: galaxia);
begin
	write('Nombre: ');
	readln(g.nombre);
	write('Tipo: ');
	readln(g.tipo);
	write('Masa en kg: ');
	readln(g.masa);
	write('Distancia en pc: ');
	readln(g.dist);
	writeln(' ');
end;
procedure analizarTipo(g: galaxia; var cantElip, cantEsp, cantLent, cantIrreg: integer);
begin
	if(g.tipo = 'eliptica')then
		cantElip:= cantElip + 1
	else if(g.tipo = 'espiral')then
		cantEsp:= cantEsp + 1
	else if(g.tipo = 'lenticular')then
		cantLent:= cantLent + 1
	else if(g.tipo = 'irregular')then
		cantIrreg:= cantIrreg + 1;
end;
procedure calcularMayor(g: galaxia; var nomMayor1, nomMayor2: string; var masaMayor1, masaMayor2: real);
begin
	if(g.masa > masaMayor1)then begin
		masaMayor2:= masaMayor1;
		masaMayor1:= g.masa;
		nomMayor2:= nomMayor1;
		nomMayor1:= g.nombre;
	end
	else if(g.masa > masaMayor2)then begin
		masaMayor2:= g.masa;
		nomMayor2:= g.nombre;
	end;
end;
procedure calcularMenor(g: galaxia; var nomMenor1, nomMenor2: string; var masaMenor1, masaMenor2: real);
begin
	if(g.masa < masaMenor1)then begin
		masaMenor2:= masaMenor1;
		masaMenor1:= g.masa;
		nomMenor2:= nomMenor1;
		nomMenor1:= g.nombre;
	end
	else if(g.masa < masaMenor2)then begin
		masaMenor2:= g.masa;
		nomMenor2:= g.nombre;
	end;
end;
var
	g: galaxia;
	v: grupoLocal;
	i: integer;
	cantElip, cantEsp, cantLent, cantIrreg: integer;
	masaPrincipales, masaTotal: real;
	porcentaje: real;
	cantRegCercanas: integer;
	nomMayor1, nomMayor2: string;
	nomMenor1, nomMenor2: string;
	masaMayor1, masaMayor2: real;
	masaMenor1, masaMenor2: real;
begin
	cantElip:= 0;
	cantEsp:= 0;
	cantLent:= 0;
	cantIrreg:= 0;
	masaPrincipales:= 0;
	masaTotal:= 0;
	porcentaje:= 0;
	cantRegCercanas:= 0;
	nomMayor1:= ' ';
	nomMayor2:= ' ';
	nomMenor1:= ' ';
	nomMenor1:= ' ';
	masaMayor1:= 0;
	masaMayor2:= 0;
	masaMenor1:= 99999;
	masaMenor2:= 99999;
	for i:= 1 to 5 do begin
		leerGalaxia(g);
		v[i]:= g;
	end;
	for i:= 1 to 5 do begin
		masaTotal:= masaTotal + v[i].masa;
		if(v[i].nombre = 'Via Lactea')OR(v[i].nombre = 'Andromeda')OR(v[i].nombre = 'Triangulo')then
			masaPrincipales:= masaPrincipales + v[i].masa;
		if(v[i].tipo <> 'irregular')AND(v[i].dist < 1000)then
			cantRegCercanas:= cantRegCercanas + 1;
		analizarTipo(v[i], cantElip, cantEsp, cantLent, cantIrreg);
		calcularMayor(v[i], nomMayor1, nomMayor2, masaMayor1, masaMayor2);
		calcularMenor(v[i], nomMenor1, nomMenor2, masaMenor1, masaMenor2);
	end;
	porcentaje:= (masaPrincipales*100)/masaTotal;
	writeln('Elipticas: ', cantElip);
	writeln('Espilares: ', cantEsp);
	writeln('Lenticulares: ', cantLent);
	writeln('Irregulares: ', cantIrreg);
	writeln('Masa de las galaxias principales: ', masaPrincipales:0:0, 'kg. Representa el ', porcentaje:0:0, '% de la masa de todas las galaxias');
	writeln('No irregulares a menos de 1000pc: ', cantRegCercanas);
	writeln('Galaxias con mayor masa: ', nomMayor1, ' y ', nomMayor2);
	writeln('Galaxias con menor masa: ', nomMenor1, ' y ', nomMenor2);
end.
