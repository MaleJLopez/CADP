program ejercicio7;
type
	digitos = array [0..9] of integer;
procedure inicializar(var v: digitos);
var
	i: integer;
begin
	for i:= 0 to 0 do
		v[i]:= 0;
end;
procedure analizarDigitos(var v: digitos; num: integer);
var
	digito: integer;
begin
	if(num = 0) then
		v[0]:= v[0] + 1;
	while(num <> 0)do begin
		digito:= num MOD 10;
		num:= num DIV 10;
		v[digito]:= v[digito] + 1;
	end;
end;
procedure informar(v: digitos);
var
	i, max: integer;
begin
	max:= 0;
	for i:= 0 to 9 do begin
		if(v[i] > 0)then
			writeln('Numero ', i, ':', v[i], ' veces')
		else
			writeln(i, ' no tuvo ocurrencias');
		if(max < v[i])then
			max:= i;
	end;
	writeln('Digito mas leido: ', max);
end;
var
	v: digitos;
	num: integer;
begin
	inicializar(v);
	readln(num);
	while(num <> -1)do begin
		analizarDigitos(v, num);
		readln(num);
	end;
	informar(v);
end.
