{a}
procedure posicion(v: vector; x: integer; var pos: integer);
var
	seguir: boolean;
begin
	seguir:= true;
	pos:= 1;
	while(pos<=100)AND(seguir = true)do begin
		if(v[pos] = x)then
			seguir:= false;
		else
			pos:= pos + 1;
	if(seguir = true)then
		pos:= -1;
	end;
end;

{b}
procedure intercambio(var v: vector; dimL, x, y: integer);
var
	i: integer;
begin
	v[x]:= y;
	v[y]:= x;
end;


{c}
procedure sumaVector(v: vector; dimL: integer; var suma: integer);
var
	i: integer;
begin
	suma:= 0;
	for i:= 1 to dimL do
		suma:= suma + v[i];
end;

{d}
procedure promedio(v: vector; dimL: integer; var prom: integer);
var
	i: integer;
	suma: integer;
begin
	suma:= 0;
	for i:= 1 to dimL do
		suma:= suma + v[i];
	prom:= suma DIV dimL;
end;

{e}
procedure elementoMaximo(v: vector; dimL: integer; var pos: integer);
var
	i: integer;
	max: integer;
begin
	pos:= 0;
	max:= -1;
	for i:= 1 to dimL do begin
		if(v[i] > max)then begin
			max[i]:= v[i];
			pos:= i;
		end;
	end;
end;

{f}
procedure elementoMinimo(v: vector; dimL: integer; var pos: integer);
var
	i: integer;
	min: integer;
begin
	pos:= 0;
	min:= 9999;
	for i:= 1 to dimL do begin
		if(v[i] < min)do begin
			min:= v[i];
			pos:= i;
		end;
	end;
end;
