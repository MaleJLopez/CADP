//Lea el diámetro de un círculo e imprima:
//el radio, el área y el perímetro del círculo.

program ejercicio4;
var
	diam, radio, area, per: real;
begin
	radio:= 0; area:= 0; per:= 0;
	writeln('Ingrese diametro del circulo:');
	readln(diam);
	radio:= diam/2;
	area:= 3.14 * radio * radio;
	per:= 3.14 * diam;
	writeln('Radio: ', radio:0:2, '. Area: ', area:0:2, '. Perimetro: ', per:0:2);
end.
