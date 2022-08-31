program ejercicio5;
var
	X, num, doble: real;
	cont: integer;
begin
	cont:= 0;
	readln(X);
	readln(num);
	doble:= X*2;
	while(num <> doble)AND(cont<>10)do
	begin
		readln(num);
		cont:= cont+1;
	end;
	if(num<>doble)then
		writeln('No se ha ingresado el doble de X.');
end.

