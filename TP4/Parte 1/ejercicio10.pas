program ejercicio10;
type
	salarios = array [1..300] of real;
procedure aumentar(var v: salarios; x: real; dimL: integer);
var
	i: integer;
begin
	for i:= 1 to dimL do
		v[i]:= v[i]*x;
end;
procedure calcularPromedio(v: salarios; dimL: integer; var promedio: real);
var
	i: integer;
	total: real;
begin
	total:= 0;
	for i:= 1 to dimL do
		total:= total + v[i];
	promedio:= total/dimL;
	writeln(' ');
	writeln('Sueldo promedio: ', promedio:0:0);
end;
var
	v: salarios;
	x: real;
	dimL: integer;
	promedio: real;
	num: real;
begin
	dimL:= 0;
	write('Ingrese numero: ');
	readln(num);
	while(num <> 0)AND(dimL <= 300)do begin
		dimL:= dimL + 1;
		v[dimL]:= num;
		write('Ingrese numero: ');
		readln(num);
	end;
	write('Ingrese valor a multiplicar: ');
	readln(x);
	aumentar(v, x, dimL);
	calcularPromedio(v, dimL, promedio);
end.
