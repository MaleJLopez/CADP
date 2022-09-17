program ejercicio4;
type
	tLinea = record
		nro: integer;
		cantMin: integer;
		cantMB: integer;
	end;
	tCliente = record
		cod: integer;
		cantLineas: integer;
	end;
procedure leerLinea(var l: tLinea);
begin
	write('Numero: ');
	readln(l.nro);
	write('Minutos consumidos: ');
	readln(l.cantMin);
	write('MB consumidos: ');
	readln(l.cantMB);
	writeln(' ');
end;
procedure leerCliente(var c: tCliente; var l: tLinea; var totalMin, totalMB: integer);
var
	i: integer;
	cantLineas: integer;
begin
	write('Codigo de cliente: ');
	readln(c.cod);
	write('Cantidad de lineas: ');
	readln(c.cantLineas);
	cantLineas:= c.cantLineas;
	writeln(' ');
	for i:= 1 to cantLineas do begin
		leerLinea(l);
		totalMin:= totalMin + l.cantMin;
		totalMB:= totalMB + l.cantMB;
	end;
end;
const
	precioMin = 3.40;
	precioMB = 1.35;
var
	i: integer;
	cliente: tCliente;
	linea: tLinea;
	totalMin, totalMB: integer;
	montoTotal: real;
begin
	montoTotal:= 0;
	for i:= 1 to 9300 do begin
		totalMin:= 0;
		totalMB:= 0;
		leerCliente(cliente, linea, totalMin, totalMB);
		montoTotal:= (totalMB * precioMB) + (totalMin * precioMin);
		writeln('Debe pagar $', (montoTotal):0:0);
		writeln(' ');
	end;
end.
