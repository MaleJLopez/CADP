program ejercicio5;
type
	numeros = array[1..100] of integer;
procedure elementoMaximo(v: numeros; dimL: integer; var max, pos: integer);
var
	i: integer;
begin
	pos:= 0;
	for i:= 1 to dimL do begin
		if(v[i] > max)then begin
			max:= v[i];
			pos:= i;
		end;
	end;
end;
procedure elementoMinimo(v: numeros; dimL: integer; var min, pos: integer);
var
	i: integer;
begin
	pos:= 0;
	for i:= 1 to dimL do begin
		if(v[i] < min)then begin
			min:= v[i];
			pos:= i;
		end;
	end;
end;
procedure intercambio(var v: numeros; dimL, x, y: integer);
begin
	v[x]:= y;
	v[y]:= x;
end;
var
	v: numeros;
	dimL: integer;
	num: integer;
	max, min: integer;
	posMax, posMin: integer;
begin
	max:= -1;
	posMax:= 0;
	min:= 9999;
	posMin:= 0;
	dimL:= 0;
	readln(num);
	while(num <> 0)AND(dimL < 100)do begin
		dimL:= dimL + 1;
		v[dimL]:= num;
		readln(num);
	end;
	elementoMaximo(v, dimL, max, posMax);
	elementoMinimo(v, dimL, min, posMin);
	intercambio(v, dimL, max, min);
	writeln(' ');
	writeln('El elemento maximo ', max, ' que se encontraba en la posicion ', posMax, ' fue intercambiado con el elemento minimo ', min, ' que se encontraba en la posicion ', posMin);
end.
