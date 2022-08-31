program ejercicio3;
var
	num1, num2, num3: integer;
begin
	readln(num1);
	readln(num2);
	readln(num3);
	if(num1 > num2)then
	begin
		if(num1 > num3)then
		begin
			writeln(num1);
			if(num2 > num3)then
			begin
				writeln(num2);
				writeln(num3);
			end
			else
			begin
				writeln(num3);
				writeln(num2);
			end;
		end
		else
		begin
			writeln(num3);
			writeln(num2);
			writeln(num1);
		end;
	end
	else if(num2 > num3)then
	begin
		writeln(num2);
		if(num1 > num3)then
		begin
			writeln(num1);
			writeln(num3);
		end
		else
		begin
			writeln(num3);
			writeln(num1);
		end;
	end
	else
	begin
		writeln(num3);
		writeln(num2);
		writeln(num1);
	end;
end.
