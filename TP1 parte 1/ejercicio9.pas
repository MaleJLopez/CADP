program ejercicio9;
var
	caracter: char;
	num: integer;
	total: integer;
begin
	total:= 0;
	writeln('Para sumar, ingrese: +');
	writeln('Para restar, ingrese: -');
	readln(caracter);
	if(caracter = '+')then
		begin
			readln(num);
			while(num <> 0)do
				total:= total + num;
				readln(num);
			writeln('Resultado: ', total);
		end
	else if(caracter = '-')then
		begin
			readln(num);
			while(num <> 0)do
				total:= total - num;
				readln(num);
			writeln('Resultado: ', total);
		end
	else
		writeln('Error.');
end.
