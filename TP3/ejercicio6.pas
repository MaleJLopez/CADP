program ejercicio6;
type
	tProcesador = record
		marca: string;
		linea: string;
		cantCores: integer;
		velocidad: integer;
		tamTransistores: integer;
	end;
procedure leerProcesador(var p: tProcesador);
begin
	write('Marca: ');
	readln(p.marca);
	write('Linea: ');
	readln(p.linea);
	write('Cantidad de cores: ');
	readln(p.cantCores);
	if(p.cantCores <> 0)then begin
		write('Velocidad del reloj: ');
		readln(p.velocidad);
		write('Tamaño de transistores: ');
		readln(p.tamTransistores);
		writeln(' ');
	end;
end;
procedure actualizarMax(p: tProcesador; var marcaMax1, marcaMax2: string; var cantMax1, cantMax2: integer);
begin
	if(p.tamTransistores = 14)then begin
		if(p.cantCores > cantMax1)then begin
			cantMax2:= cantMax1;
			cantMax1:= p.cantCores;
			marcaMax2:= marcaMax1;
			marcaMax1:= p.marca;
		end
		else if(p.cantCores > cantMax2)then begin
			cantMax2:= p.cantCores;
			marcaMax2:= p.marca;
		end;
	end;
end;
var
	procesador: tProcesador;
	marcaMax1, marcaMax2: string;
	cantMax1, cantMax2: integer;
	marcaActual: string;
	cantVeloz: integer;
begin
	cantMax1:= 0;
	cantMax2:= 0;
	marcaMax1:= ' ';
	marcaMax2:= ' ';
	cantVeloz:= 0;
	leerProcesador(procesador);
	while(procesador.cantCores <> 0)do begin
		marcaActual:= procesador.marca;
		while(procesador.marca = marcaActual)do begin
			if(procesador.cantCores > 2)AND(procesador.tamTransistores >= 22)then begin
				writeln(procesador.marca, ' ', procesador.linea, ' tiene mas de 2 cores con transistores de a lo sumo 22 nm.');
				writeln(' ');
			end;
			if((procesador.marca = 'Intel')OR(procesador.marca = 'AMD'))AND(procesador.velocidad >= 2)then
				cantVeloz:= cantVeloz + 1;
			actualizarMax(procesador, marcaMax1, marcaMax2, cantMax1, cantMax2);
			leerProcesador(procesador);
		end;
	end;
	writeln(' ');
	writeln('Marcas con mayor cantidad de procesadores con transistores de 14 nm: ', marcaMax1, ' y ', marcaMax2);
	writeln('Cantidad multicore Intel o AMD con velocidades de al menos 2 Ghz: ', cantVeloz);
end.
