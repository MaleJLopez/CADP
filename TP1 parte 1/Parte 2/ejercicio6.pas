program ejercicio6;
type
	tcodigo = 1..200;
var
	precio: real;
	codigo: tcodigo;
	min1: real;
	min2: real;
	cod1: tcodigo;
	cod2: tcodigo;
	especiales: integer;
	i: integer;
begin
	especiales:= 0;
	min1:= 9999.99;
	min2:= 9999.99;
	cod1:= 1;
	cod2:= 1;
	for i:= 1 to 3 do
	begin
		write('Codigo del producto:');
		readln(codigo);
		write('Precio: $');
		readln(precio);
		if(precio < min1)then
		begin
			min2:= min1;
			min1:= precio;
			cod2:= cod1;
			cod1:= codigo;
		end
		else if(precio < min2)then
		begin
			min2:= precio;
			cod2:= codigo;
		end;
		if(precio > 16) AND (codigo MOD 2 = 0)then
			especiales:= especiales + 1;
	end;
	writeln('Productos mas baratos: ', cod1, ' y ', cod2);
	writeln('Productos especiales: ', especiales);
end.
