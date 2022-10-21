program ejercicio5;
type
	producto = record
		cod: integer;
		desc: string;
		stockActual: integer;
		stockMin: integer;
		precio: real;
	end;
	lista = ^nodo;
	nodo = record
		dato: producto;
		sig: lista;
	end;
procedure leerProducto(var p: producto);
begin
	write('Codigo: ');
	readln(p.cod);
	if(p.cod <> -1)then begin
		write('Descripcion: ');
		readln(p.desc);
		write('Stock actual: ');
		readln(p.stockActual);
		write('Stock minimo: ');
		readln(p.stockMin);
		write('Precio: ');
		readln(p.precio);
		writeln(' ');
	end;
end;
procedure agregarAdelante(var L: lista; p: producto);
var
	nue: lista;
begin
	new(nue);
	nue^.dato:= p;
	nue^.sig:= L;
	L:= nue;
end;
function esPar(num: integer):boolean;
begin
	esPar:= num MOD 2 = 0;
end;
procedure descomponer(num: integer; var pares: integer);
var
	dig: integer;
begin
	pares:= 0;
	while(num <> 0)do begin
		dig:= num MOD 10;
		num:= num DIV 10;
		if(esPar(dig))then
			pares:= pares + 1;
	end;
end;
procedure calcularMin(p: producto; var min1, min2: producto);
begin
	if(p.precio < min1.precio)then begin
		min2:= min1;
		min1:= p;
	end
	else if(p.precio < min2.precio)then
		min2:= p;
end;
var
	L: lista;
	p: producto;
	cantStockBajo: integer;
	totalProductos: integer;
	pares: integer;
	min1, min2: producto;
begin
	cantStockBajo:= 0;
	totalProductos:= 0;
	pares:= 0;
	min1.precio:= 99999;
	min2.precio:= 99999;
	leerProducto(p);
	while(p.cod <> -1)do begin
		agregarAdelante(L, p);
		totalProductos:= totalProductos + 1;
		if(p.stockActual < p.stockMin)then
			cantStockBajo:= cantStockBajo + 1;
		descomponer(p.cod, pares);
		if(pares >= 3)then
			writeln(p.desc);
		calcularMin(p, min1, min2);
		leerProducto(p);
	end;
	writeln('Porcentaje de productos con stock actual menor al minimo: ', ((cantStockBajo*100)/totalProductos):0:0);
	writeln('Productos mas economicos: ', min1.cod, ' y ', min2.cod);
end.
