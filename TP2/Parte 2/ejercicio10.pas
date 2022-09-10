program ejercicio10;
procedure digitos(num: integer; var sumaPares: integer; var cantImpares: integer);
var
	digito: integer;
begin
	sumaPares:= 0;
	cantImpares:= 0;
	while(num <> 0)do begin
		digito:= num MOD 10;
		if(digito MOD 2 = 0)then
			sumaPares:= sumaPares + digito
		else
			cantImpares:= cantImpares + 1;
		num:= num DIV 10;
	end;
end;
var
	num: integer;
	sumaPares: integer;
	cantImpares: integer;
begin
	sumaPares:= 0;
	cantImpares:= 0;
	repeat
		writeln('Ingrese un numero');
		readln(num);
		digitos(num, sumaPares, cantImpares);
		writeln('Digitos impares: ', cantImpares);
		writeln('Suma de digitos pares: ', sumaPares);
	until(num = 12345);
end.
