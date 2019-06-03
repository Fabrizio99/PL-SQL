SET SERVEROUTPUT ON;
--soy un comentario
DECLARE
    nota_1     NUMBER := 14;
    nota_2     NUMBER := 15;
    nota_3     NUMBER := 15;
    promedio   NUMBER(3,1);
BEGIN
    promedio := ( nota_1 + nota_2 + nota_3 ) / 3;
    dbms_output.put_line('Promedio: ' || promedio);
    IF
        promedio > 20 OR promedio < 0
    THEN
        dbms_output.put_line('Promedio fuera de rango');
    ELSIF
        promedio >= 10.5
    THEN
        dbms_output.put_line('El alumno esta aprobado');
    ELSE
        dbms_output.put_line('El alumno esta desaprobado');
    END IF;
END;

--Ejemplo2
declare
numero1 number:=2;
numero2 number:=5;
numero3 number:=1;
begin
    if numero1>numero2 then
        if numero3>numero1 then
            dbms_output.put_line(numero2 ||' '|| numero1 ||' '|| numero3);
        else
            if numero3>numero2 then
                dbms_output.put_line(numero2 ||' '|| numero3 ||' '|| numero1);
            else
                dbms_output.put_line(numero3 ||' '|| numero2 ||' '|| numero1);
            end if;
        end if;
    else
        if numero3>numero2 then
            dbms_output.put_line(numero1 ||' '|| numero2 ||' '|| numero3);
        else
            if numero3>numero1 then
                dbms_output.put_line(numero1 ||' '|| numero3 ||' '|| numero2);
            else
                dbms_output.put_line(numero3 ||' '|| numero1 ||' '|| numero2);
            end if;
        end if;
    end if;   
end;

declare
numero number:=12;
begin
    if numero>=1000 then
        dbms_output.put_line('FUERA DE RANGO');
    elsif numero between 100 and 999 then
        dbms_output.put_line('CENTENA');
    elsif numero between 10 and 99 then
        dbms_output.put_line('DECENA');
    else
        dbms_output.put_line('UNIDADES');
    end if;
end;

-- Verificar si un número está en la lista
DECLARE
    numero number;
BEGIN
    numero := 20;
    IF numero in (3,4,10,20,5,-10) then
        DBMS_OUTPUT.PUT_LINE('SI ESTÁ EN LA LISTA');  
    ELSE
        DBMS_Output.Put_Line('NO ESTÁ EN LA LISTA');
    end if;
END;
-- verificar
DECLARE
    numero number;
BEGIN
    numero := 20;
    IF numero NOT in  (3,4,10,20,5,-10) then
        DBMS_OUTPUT.PUT_LINE('NO ESTÁ EN LA LISTA');  
    ELSE
        DBMS_Output.Put_Line('SI ESTÁ EN LA LISTA');
    end if;
END;
--Estructura secuencial
--1
declare
numero1 number:=12;
numero2 number:=11;
temporal number;
begin
    DBMS_Output.Put_Line('Numero 1: '|| numero1);
    DBMS_Output.Put_Line('Numero 2: '|| numero2);
    temporal:=numero1;
    numero1:=numero2;
    numero2:=temporal;
    DBMS_Output.Put_Line('Valores cambiados');
    DBMS_Output.Put_Line('Numero 1: '|| numero1);
    DBMS_Output.Put_Line('Numero 2: '|| numero2);
end;
--2
declare
cantidadN number:=6;
sumatoria number;
begin
    sumatoria:=(cantidadN*(cantidadN+1))/2;
    DBMS_Output.Put_Line('Sumatoria de los '|| cantidadN ||' primeros numero: '|| sumatoria);
end;
--3
declare
base number:=2;
altura number:=3;
area number;
begin
    area := base*altura/2;
    DBMS_Output.Put_Line('El area del triangulo es '|| area);
end;
--4
declare
cateto1 number:=3;
cateto2 number:=4;
hipotenusa number;
begin
    hipotenusa := sqrt(power(cateto1,2)+power(cateto2,2));
    DBMS_Output.Put_Line('La hipotenusa es'|| hipotenusa);
end;
--5
declare
x1 number:=7;
y1 number:=5;
x2 number:=4;
y2 number:=1;
distancia number(3,1);
begin
    distancia := sqrt(power((x2-x1),2)+power((y2-y1),2));
    DBMS_Output.Put_Line('La distancia entre ('|| x1 ||','|| y1 ||') y ('|| x2 ||','|| y2 ||') es: '|| distancia);
end;
--6
declare
    cantidadHoras number :=5;
    horaAdicional number;
    costoAdicional number;
    costoTotal number;
begin
    if cantidadHoras between 1 and 3 then
        costoTotal := 3;
        DBMS_Output.Put_Line('El costo es de '|| costoTotal);
    else
        horaAdicional := cantidadHoras-3;
        if cantidadHoras between 4 and 24 then
            costoAdicional := horaAdicional*2;
        elsif cantidadHoras>24 then
            costoAdicional := horaAdicional;
        end if;
        costoTotal := 3 + costoAdicional;
        DBMS_Output.Put_Line('El costo es de '|| costoTotal);
    end if;
end;
--7
declare
numero1 number:=8;
numero2 number:=5;
numero3 number:=10;
begin
    if numero1>numero2 then
        if numero3>numero1 then
            dbms_output.put_line('Mayor '|| numero3);
        else
            dbms_output.put_line('Mayor '|| numero1);
        end if;
    else
        if numero3>numero2 then
            dbms_output.put_line('Mayor '|| numero3);
        else
            dbms_output.put_line('Mayor '|| numero2);
        end if;
    end if;   
end;
--8
declare
lado1 number:=7;
lado2 number:=5;
lado3 number:=10;
begin
    if (lado1+lado2)>lado3 and (lado1+lado3)>lado2 and (lado3+lado2)>lado1 then
        dbms_output.put_line('Los 3 lados forman un triangulo');
    else
        dbms_output.put_line('Los 3 lados no forman un triangulo');
    end if;
end;
--9
declare
lado1 number:=7;
lado2 number:=5;
lado3 number:=10;
begin
    if lado1=lado2 and lado2=lado3 then
        dbms_output.put_line('Triangulo equilatero');
    elsif lado1=lado2 or lado1=lado3 or lado2=lado3 then
        dbms_output.put_line('Triangulo isosceles');
    else
        dbms_output.put_line('Triangulo escaleno');
    end if;
end;