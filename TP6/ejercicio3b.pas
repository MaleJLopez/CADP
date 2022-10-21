program JugamosConListas;
type
	lista = ^nodo;
		nodo = record
		num : integer;
		sig : lista;
	end;
procedure armarNodo(var ult: lista; v: integer);
var
	nuevo : lista;
begin
	new(nuevo);
	nuevo^.num:= v;
	nuevo^.sig:= nil;
	if(ult = nil)then
		ult:= nuevo
	else begin
		while(ult^.sig <> nil)do
			ult:= ult^.sig;
		ult^.sig:= nuevo;
		ult:= ult^.sig;
	end;
end;
var
	pri : lista;
	valor : integer;
begin
	pri := nil;
	writeln('Ingrese un numero');
	read(valor);
	while (valor <> 0) do begin
		armarNodo(pri, valor);
		writeln('Ingrese un numero');
		read(valor);
	end;
	{ imprimir lista }
	while(pri <> nil)do begin
		write(pri^.num, ' ');
		pri:= pri^.sig;
	end;
end.

