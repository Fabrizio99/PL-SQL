CREATE TABLE PRODUCTO(
    idproducto number primary key,
    nombre varchar2(100),
    precio number(8,2)
);
create sequence sq_producto
start with 1
increment by 1
minvalue 1
nocycle;

create or replace procedure sp_agregarproducto(nombre varchar2, precio number)
is
begin
    insert into producto
    values(sq_producto.nextval,nombre,precio);
end sp_agregarproducto;

begin
--SP_AGREGARPRODUCTO('Polo',70);
--SP_ELIMINAR(2);
SP_ACTUALIZARNOMBRE('lentes medida',1);
commit;
end;
select * from producto;
create or replace procedure sp_eliminar(id number)
is
begin
    delete from producto where idproducto=id;
end sp_eliminar;
create or replace procedure sp_actualizarnombre(nombrenuevo varchar2,id number)
is
begin
    update producto set NOMBRE=nombrenuevo where idproducto=id;
end sp_actualizarnombre;