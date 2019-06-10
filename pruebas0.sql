set serveroutput on;
declare
    cantidadalumnos number:=100;
    cobro number;
    pagoempresa number;
begin
    if cantidadalumnos>=100 then cobro:=65;
    elsif cantidadalumnos between 55 and 99 then cobro:=70;
    elsif cantidadalumnos between 30 and 49 then cobro:=95;
    else cobro:=(4000/cantidadalumnos);
    end if;
    pagoempresa := cantidadalumnos*cobro;
    dbms_output.put_line('Costo por alumno: '||cobro);
    dbms_output.put_line('Total a pagar: '||pagoempresa);
end;
--
declare 
    cantidadcitas number:=4;
    pagototal number;
begin
    if cantidadcitas>8 then pagototal := 3*200+150*2+100*3+(cantidadcitas-8)*50;
    elsif cantidadcitas between 6 and 8 then pagototal := 3*200+150*2+(cantidadcitas-5)*100;
    elsif cantidadcitas between 4 and 5 then  pagototal := 3*200+(cantidadcitas-3)*150;
    else pagototal :=200*cantidadcitas;
    end if;
    dbms_output.put_line('Costo total del tratamiento: '||pagototal);
end;
--
declare
    cantidadlitros number:=3.785;
    costrolitro number:=10;
    cantidadgalones number(5,2);
    costogalon number;
    cobro number;
begin
    cantidadgalones := cantidadlitros/3.785;
    cobro := cantidadgalones*costrolitro;
    dbms_output.put_line('Cantidad de galones: '||cantidadgalones);
    dbms_output.put_line('Total a cobrar: '||cobro);
end;

--
declare
    cantidadHoras number:=8;
    costoHora number:=10;
    pagototal number;
begin
    pagototal := (cantidadhoras*costohora)*5;
    dbms_output.put_line('Total a pagar: '||pagototal);
end;
--
declare
tipobus number:=1;
distancia number:=10;
cantidadpersonas number:=20;
capacidadmaxima number;
costokmpersona number;
costototalpersona number;
costototalviaje number;
begin
    case tipobus
    when 1 then capacidadmaxima:=20; costokmpersona:=2;
    when 2 then capacidadmaxima:=25; costokmpersona:=2.5;
    when 3 then capacidadmaxima:=30; costokmpersona:=3;
    end case;
    if cantidadpersonas<0 or cantidadpersonas>capacidadmaxima then 
        dbms_output.put_line('Cantidad no permitida');
    else 
        costototalpersona := distancia*costokmpersona;
        costototalviaje := costototalpersona*cantidadpersonas;
        dbms_output.put_line('Costo del pasaje por persona: '|| costototalpersona);
        dbms_output.put_line('Costo total del viaje: '|| costototalviaje);
    end if;
end;
-- clase
create or replace procedure sp_saludo(usuario varchar2)
is
    mensaje varchar2(100):='Buenos dias';
begin
    dbms_output.put_line(mensaje || usuario);
end sp_saludo;

begin
SP_SALUDO('Fabrizio');
end;
-- 
create user bdprueba
identified by "123"
temporary tablespace "TEMP"
default tablespace "USERS";
grant all privileges to bdprueba;
