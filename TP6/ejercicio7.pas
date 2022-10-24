program ejercicio7;
type
	sonda = record
		nombre: string;
		duracion: integer;
		costoConst: real;
		costoMant: real;
		rango: integer;
	end;
	lista = ^nodo;
	nodo = record
		dato: sonda;
		sig: lista;
	end;
	vector = array[1..7] of integer;
procedure verificarCriterios(L: lista; var cumple: boolean);
begin
	cumple:= true;
	if(L^.dato.costoMant > L^.dato.costoConst)then
		cumple:=false;
	if(L^.dato.rango = 1)then
		cumple:= false;
end;
procedure crearListas(L: lista; var listaCumple, listaNoCumple: lista);
var
	nueCumple: lista;
	nueNoCumple: lista;
	cumple: boolean;
begin
	listaCumple:= nil;
	listaNoCumple:= nil;
	nueCumple:= nil;
	nueNoCumple:= nil;
	cumple:= true;
	while(L <> nil)do begin
		verificarCriterios(L, cumple);
		if(cumple = true)then begin
			if(nueCumple = nil)then begin
				new(nueCumple);
				listaCumple:= nueCumple;
			end
			else begin
				new(nueCumple);
				listaCumple:= listaCumple^.sig;
			end;
			nueCumple^.dato:= L^.dato;
			nueCumple^.sig:= nil;
		end
		else begin
			if(nueNoCumple = nil)then begin
				new(nueNoCumple);
				listaNoCumple:= nueNoCumple;
			end
			else begin
				new(listaNoCumple);
				listaNoCumple:= listaNoCumple^.sig;
			end;
			listaNoCumple^.dato:= L^.dato;
			listaNoCumple^.sig:= nil;
		end;
		L:= L^.sig;	
	end;
end;
