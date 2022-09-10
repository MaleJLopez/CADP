program ejercicio6;
procedure numeros;
var
	num: integer;
	masAlto: integer;
begin
	masAlto:= -1;
	writeln('Ingrese un numero');
	readln(num);
	while(num >= 0)do begin
		if(num MOD 2 = 0)then begin
			if(num > masAlto)then
				masAlto:= num;
		end;
		writeln('Ingrese un numero');
		readln(num);
	end;
	writeln('El numero par mas alto es ', masAlto);
end;
begin
	numeros;
end.
