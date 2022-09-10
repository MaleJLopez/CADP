program ejercicio5;
function esDoble(numA, numB: integer): boolean;
begin
	esDoble:= (numA*2 = numB);
end;
var
	numA, numB: integer;
	doblePares: integer;
	totalPares: integer;
begin
	doblePares:= 0;
	totalPares:= 0;
	writeln('Ingrese dos numeros');
	readln(numA);
	readln(numB);
	while(numA <> 0)AND(numB <> 0)do
	begin
		if(esDoble(numA, numB))then
			doblePares:= doblePares + 1;
		totalPares:= totalPares + 1;
		writeln('Ingrese dos numeros');
		readln(numA);
		readln(numB);
	end;
	writeln('Total de pares: ', totalPares);
	writeln('Pares dobles: ', doblePares);
end.
