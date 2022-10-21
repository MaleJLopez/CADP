{a}
procedure buscarMax(L: lista; var max: lista);
begin
	max:= L;
	while(L <> nil)do begin
		if(L^.num > max^.num)then
			max:= L;
		L:= L^.sig;
	end;
end;

{b}
procedure buscarMin(L: lista; var min: lista);
begin
	min:= L;
	while(L <> nil)do begin
		if(L^.num < min^.num)then
			min:= L;
		L:= L^.sig;
	end:	
end;

{c}
procedure multiplos(L: lista; valor: integer; var cantMultiplos: integer);
begin
	cantMultiplos:= 0;
	while(L <> nil)do begin
		if(L^.num MOD valor = 0)then
			cantMultiplos:= cantMultiplos + 1;
		L:= L^.sig;
	end;
end;
