program ejercicio6;
type
	numeros = array[1..100] of integer;
procedure minMax(v: numeros; dimL: integer; var min, max, posMin, posMax: integer);
var
	i: integer;
begin
	for i:= 1 to dimL do begin
		if(v[i] < min)then begin
			min:= v[i];
			posMin:= i;
		end
		else if(v[i] > max)then begin
			max:= v[i];
			posMax:= i;
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
	minMax(v, dimL, min, max, posMin, posMax);
	intercambio(v, dimL, max, min);
	writeln(' ');
	writeln('El elemento maximo ', max, ' que se encontraba en la posicion ', posMax, ' fue intercambiado con el elemento minimo ', min, ' que se encontraba en la posicion', posMin);
end.

