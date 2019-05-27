CREATE TABLE pais (
    idpais   NUMBER PRIMARY KEY,
    nombre   VARCHAR2(25),
    estado   CHAR(1)
);

CREATE TABLE persona (
    idpersona   NUMBER PRIMARY KEY,
    nombre      VARCHAR2(50),
    dni         CHAR(8),
    direccion   VARCHAR2(25),
    telefono    VARCHAR2(15),
    estado      CHAR(1),
    idpais      NUMBER
        REFERENCES pais
);

CREATE SEQUENCE sq_persona START WITH 1 INCREMENT BY 1 MINVALUE 1 NOCYCLE;

INSERT INTO pais VALUES (
    sq_pais.NEXTVAL,
    'Inglaterra',
    'A'
);

COMMIT;

INSERT INTO persona VALUES (
    sq_persona.NEXTVAL,
    'Lili Colins',
    '12345679',
    'Exeter 456',
    '235237',
    'A',
    2
);

COMMIT;
-- PL/SQL
-- MI PRIMER ALGORITMO

SET SERVEROUTPUT ON;

DECLARE BEGIN
    dbms_output.put_line('Hola DBD');
END;
-- SEGUNDO EJERCICIO

DECLARE BEGIN
    dbms_output.put_line('DATOS PERSONALES');
    dbms_output.put_line('NOMBRE: Fabrizio');
    dbms_output.put_line('APELLIDOS: Condori');
    dbms_output.put_line('DNI: 12345678');
    dbms_output.put_line('DIRECCION: Av. El Sol');
END;

--TERCER EJERCICIO

DECLARE
    nombre    VARCHAR2(25);
    salario   NUMBER;
BEGIN
    nombre := 'Fabrizio Condori';
    salario := 4560;
    dbms_output.put_line('**** REPORTE ***** ');
    dbms_output.put_line('Nombre:  ' || nombre);
    dbms_output.put_line('Salario: S/.' || salario);
END;
--CUARTO EJERCICIO

DECLARE
    nombre             VARCHAR2(25) := 'Fabrizio Condori';
    dni                VARCHAR2(8) := '12345678';
    profesion          VARCHAR2(30) := 'Ing. Sistemas';
    salario            NUMBER := 4560;
    fecha_nacimiento   constant DATE := '30/01/1999';
    estado             CHAR(1) := 'A';
    disponible         BOOLEAN := true;
BEGIN
    dbms_output.put_line('**** REPORTE ***** ');
    dbms_output.put_line('Nombre:  ' || nombre);
    dbms_output.put_line('DNI:  ' || dni);
    dbms_output.put_line('Profesion:  ' || profesion);
    dbms_output.put_line('Salario: S/.' || salario);
    dbms_output.put_line('Fecha de Nacimiento: ' || fecha_nacimiento);
    dbms_output.put_line('Estado:  ' || estado);
    dbms_output.put_line('Disponibilidad: '
     || CASE
        WHEN disponible THEN 'si'
        ELSE 'no'
    END);
    --if disponible then
    --dbms_output.put_line('Disponible');
    --else
    --dbms_output.put_line('No Disponible');
    --end if;
END;
--PRACATICA
--EJERCICIO1
DECLARE
    EX_PARCIAL NUMBER:=15;
    EX_FINAL NUMBER:=12;
    TRABAJO_ACADEMICO NUMBER:=16;
    PROMEDIO_PRACTICA NUMBER:=14;
    PROMEDIO_FINAL NUMBER:=(EX_PARCIAL+EX_FINAL+TRABAJO_ACADEMICO+PROMEDIO_PRACTICA)/4;
BEGIN
    dbms_output.put_line('**** Evaluación ****');
    dbms_output.put_line('Examen Parcial:  ' || EX_PARCIAL);
    dbms_output.put_line('Examen Final:  ' || EX_FINAL);
    dbms_output.put_line('Trabajo Academico:  ' || TRABAJO_ACADEMICO);
    dbms_output.put_line('Promedio de Practicas:  ' || PROMEDIO_PRACTICA);
    dbms_output.put_line('Promedio Final:  ' || PROMEDIO_FINAL);
END;
--EJERCICIO2
DECLARE
    BASE NUMBER:=20;
    ALTURA NUMBER:=15;
    AREA NUMBER:=(BASE*ALTURA);
BEGIN
    dbms_output.put_line('**** Área del Rectángulo ****');
    dbms_output.put_line('Base:  ' || BASE);
    dbms_output.put_line('Altura:  ' || ALTURA);
    dbms_output.put_line('Área del Rectángulo:  ' || AREA);
END;
--EJERCICIO3
DECLARE
    RADIO NUMBER:=3;
    PI CONSTANT NUMBER:=3.141592;
    AREA NUMBER:=PI*POWER(RADIO,2);
BEGIN
    dbms_output.put_line('**** Área del Circulo ****');
    dbms_output.put_line('Radio:  ' || RADIO);
    dbms_output.put_line('Área del Circulo:  ' || AREA);
END;
--EJERCICIO4
DECLARE
    BASE NUMBER:=20;
    ALTURA NUMBER:=15;
    AREA NUMBER:=(BASE*ALTURA)/2;
BEGIN
    dbms_output.put_line('**** Área del Trinagulo Rectángulo ****');
    dbms_output.put_line('Base:  ' || BASE);
    dbms_output.put_line('Altura:  ' || ALTURA);
    dbms_output.put_line('Área del Trinagulo Rectángulo:  ' || AREA);
END;