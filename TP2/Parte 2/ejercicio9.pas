program ejercicio9;
procedure digitos(num: integer; var cantDigitos: integer; var sumaDigitos: integer);
begin
	cantDigitos:= 0;
	sumaDigitos:= 0;
	while(num <> 0)do begin
		cantDigitos:= cantDigitos + 1;
		sumaDigitos:= sumaDigitos + (num MOD 10);
		num:= num DIV 10;
	end;
end;
var
	num: integer;
	cantDigitos: integer;
	sumaDigitos: integer;
	cantTotal: integer;
begin
	cantDigitos:= 0;
	sumaDigitos:= 0;
	cantTotal:= 0;
	repeat
		writeln('Ingrese un numero:');
		readln(num);
		digitos(num, cantDigitos, sumaDigitos);
		cantTotal:= cantTotal + cantDigitos;
	until(sumaDigitos = 10);
	writeln('Total de digitos: ', cantTotal);
end.
