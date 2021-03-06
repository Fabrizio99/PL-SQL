create or replace function fn_calcularigv(importe number)
return number
is
begin   
    return importe*0.18;
end fn_calcularigv;
-----
CREATE TABLE PERSONA (
	IDPERSONA  NUMBER NOT NULL PRIMARY KEY,
	NOMBRE  	VARCHAR2(40) NOT NULL,
	APEPAT  	VARCHAR2(40) NOT NULL,
	APEMAT  	VARCHAR2(40) NOT NULL,
    DNI      	VARCHAR2(8)  NOT NULL UNIQUE,
	ESTADO  	VARCHAR2(1)  NOT NULL
);
-----
create SEQUENCE SQ_PERSONA
start with 1
increment by 1
minvalue 1
NOCYCLE;
-----
CREATE OR REPLACE PROCEDURE SP_AGREGAR_PERSONA (NOMBRE VARCHAR2,APEPAT VARCHAR2,APEMAT VARCHAR2, DNI VARCHAR2)
IS
BEGIN
    INSERT INTO PERSONA VALUES(SQ_PERSONA.NEXTVAL,NOMBRE,APEPAT,APEMAT,DNI,'a');
END SP_AGREGAR_PERSONA;
-----
CREATE OR REPLACE FUNCTION FN_OBTENERNOMBRECOMPLETO(S_DNI NUMBER)
RETURN VARCHAR2
IS
    NOMBRECOMPLETO VARCHAR2(100);
BEGIN
    SELECT (NOMBRE ||' '|| APEPAT||' '|| APEMAT) INTO NOMBRECOMPLETO
    FROM PERSONA
    WHERE 
        DNI = S_DNI
        and ESTADO = 'a';
        return NOMBRECOMPLETO;
END FN_OBTENERNOMBRECOMPLETO;
-----
SET SERVEROUTPUT ON;
begin
    --SP_AGREGAR_PERSONA('Juan','Salazar','Gomez','12345678');	
    --SP_AGREGAR_PERSONA('Pedro','Rojas','Gomez','23456789');	
    --SP_AGREGAR_PERSONA('Santiago','Perez','Perez','34567890');	
    --SP_AGREGAR_PERSONA('Fernando','Flores','Casas','45678901');	
    --SP_AGREGAR_PERSONA('Ricardo','Muguerza','Carmona','56789012');
	--commit;
    DBMS_OUTPUT.PUT_LINE(FN_OBTENERNOMBRECOMPLETO('12345678'));
end;
SELECT * FROM PERSONA;
SELECT FN_OBTENERNOMBRECOMPLETO('12345678') FROM DUAL;