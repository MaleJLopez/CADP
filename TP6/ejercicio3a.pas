program JugamosConListas;
type
	lista = ^nodo;
		nodo = record
		num : integer;
		sig : lista;
	end;
procedure armarNodo(var L: lista; v: integer);
var
	aux, nuevo : lista;
begin
	new(nuevo);
	nuevo^.num:= v;
	nuevo^.sig:= nil;
	if(L = nil)then
		L:= nuevo
	else begin
		aux:= L;
		while(aux^.sig <> nil)do
			aux:= aux^.sig;
		aux^.sig:= nuevo;
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
