program ejercicio11;
type
	foto = record
		titulo: string;
		autor: string;
		cantMG: integer;
		cantClics: integer;
		cantComents: integer;
	end;
	publicaciones = array [1..200] of foto;
procedure leerFoto(var f: foto);
begin
	write('Titulo: ');
	readln(f.titulo);
	write('Autor: ');
	readln(f.autor);
	write('Cantidad de me gustas: ');
	readln(f.cantMG);
	write('Cantidad de clics: ');
	readln(f.cantClics);
	write('Cantidad de comentarios: ');
	readln(f.cantComents);
	writeln(' ');
end;
procedure masVista(f: foto; var tituloMax: string; var clicsMax: integer);
begin
	if(f.cantClics > clicsMax)then begin
		tituloMax:= f.titulo;
		clicsMax:= f.cantClics;
	end;
end;
var
	v: publicaciones;
	f: foto;
	i: integer;
	tituloMax: string;
	clicsMax: integer;
	cantMGVandelay: integer;
begin
	tituloMax:= ' ';
	clicsMax:= -9999;
	cantMGVandelay:= 0;
	for i:= 1 to 4 do begin
		leerFoto(f);
		v[i]:= f;
	end;
	for i:= 1 to 4 do begin
		masVista(v[i], tituloMax, clicsMax);
		if(v[i].autor = 'Art Vandelay')then
			cantMGVandelay:= cantMGVandelay + v[i].cantMG;
		writeln('Comentarios: ', v[i].cantComents);
	end;
	writeln(' ');
	writeln('Foto mas vista: ', tituloMax, ' ', clicsMax);
	writeln('Total de me gustas de Art Vandelay: ', cantMGVandelay);
end.
