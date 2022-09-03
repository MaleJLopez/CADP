program ejercicio8;
var
	i: integer;
	monto: real;
	montoTotal: real;
	ventas: integer;
begin
	montoTotal:= 0;
	for i:= 1 to 3 do
	begin
		ventas:= 0;
		writeln('Dia: ', i);
		write('Monto: $');
		readln(monto);
		while(monto <> 0)do
		begin
			write('Monto: $');
			readln(monto);
			ventas:= ventas + 1;
			montoTotal:= montoTotal + monto;
		end;
		writeln('Ventas del dia ', i,': ', ventas);
		writeln(' ');
	end;
	writeln('Monto total del mes: $', montoTotal:0:2);
end.
