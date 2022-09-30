{a}
procedure imprimir(v: vector; dimL: integer);
var
	i: integer;
begin
	for i:= 1 to dimL do
		writeln(v[i]);
end;

{b}
procedure imprimirAlreves(v: vector; dimL: integer);
var
	i: integer;
begin
	for i:= dimL down to 1 do
		writeln(v[i]);
end;

{c}
procedure imprimirMitad(v: vector; dimL: integer);
var
	mitad: integer;
begin
	mitad:= diml DIV 2;
	for i:= mitad down to 1 do
		writeln(v[i]);
	mitad:= mitad + 1;
	for i:= mitad to dimL do
		writeln(v[i]);
end;

{d}
procedure imprimirXY(v: vector; x, y: integer);
var
	i: integer;
begin
	if(x < y)then begin
		for i:= X to Y do
			writeln(v[i]);
	end
	else
		for i:= X down to Y do
			writeln(v[i]);
end;
