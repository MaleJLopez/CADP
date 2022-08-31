program ejercio8;
var
	car1, car2, car3: char;
	vocales: boolean;
begin
	readln(car1);
	readln(car2);
	readln(car3);
	if(car1='A')OR(car1='E')OR(car1='I')OR(car1='O')OR(car1='U')then
	begin
		vocales:= true;
		if(car2='A')OR(car2='E')OR(car2='I')OR(car2='O')OR(car2='U')then
		begin
			vocales:= true;
			if(car3='A')OR(car3='E')OR(car3='I')OR(car3='O')OR(car3='U')then
				vocales:= true
			else
				vocales:= false;
		end	
		else
			vocales:= false;
	end
	else
		vocales:= false;
	if(vocales)then
		writeln('Los tres caracteres son vocales.')
	else
		writeln('Al menos un caracter no es una vocal.')
end.
		
