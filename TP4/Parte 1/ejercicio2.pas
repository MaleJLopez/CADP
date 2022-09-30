program Vectores;
const
	cant_datos = 150;
type
	vdatos = array[1..cant_datos] of real;
procedure cargarVector(var v:vdatos; var dimL : integer);
var
	{ completar }
	num: real;
begin
	{ completar }
	dimL:= 0;
	readln(num);
	while(num <> 0)AND(dimL <= cant_datos)do begin
		dimL:= dimL + 1;
		v[dimL]:= num;
		readln(num);
	end;
end;
procedure modificarVectorySumar(var v:vdatos; dimL : integer; n: real; var suma: real);
var
	{ completar }
	i: integer;
begin
	{ completar }
	suma:= 0;
	for i:= 1 to dimL do begin
		readln(n);
		v[i]:= v[i] + n;
		suma:= suma + v[i];
	end;
end;
var
	datos : vdatos;
	dim : integer;
	num, suma : real;
begin
	dim := 0;
	suma := 0;
	cargarVector(datos, dim); { completar }
	writeln('Ingrese un valor a sumar');
	readln(num);
	modificarVectorySumar(datos, dim, num, suma); { completar }
	writeln('La suma de los valores es: ', suma);
	writeln('Se procesaron: ', dim, ' números');
	writeln('Se procesaron: ', dim, ' números');
end.
