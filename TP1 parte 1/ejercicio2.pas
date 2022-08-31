program ejercicio2;
var
	num: real;
begin
	readln(num);
	if(num > 0)then
		writeln('Valor absoluto: |',num:0:0,'|')
	else
		writeln('Valor absoluto: |',(num*(-1)):0:0,'|');
end.
		
