set serveroutput on;

--1
/*
declare
nombre VARCHAR2(20) :='Ibai';
begin
    DBMS_OUTPUT.put_line('Hola mundo '||nombre);
end;
*/
--2
/*
desc centros;
declare
V_MAX_ID NUMBER(2);
begin
    select max(id) into V_MAX_ID from centros;
    DBMS_OUTPUT.put_line('El último identificador del centro es: '||V_MAX_ID);
end;
*/
--3

declare
V_MAX_ID NUMBER(2);
begin
    select max(id) into V_MAX_ID from centros;
    IF V_MAX_ID = null THEN
    DBMS_OUTPUT.put_line('No hay datos');
    ELSE
    DBMS_OUTPUT.put_line('El último identificador del centro es: '||V_MAX_ID);
    END IF;
end;