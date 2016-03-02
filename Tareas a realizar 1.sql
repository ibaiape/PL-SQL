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
/*
declare
V_MAX_ID CENTROS.ID%TYPE;
begin
    select max(id) into V_MAX_ID from centros;
    IF V_MAX_ID is null THEN
    DBMS_OUTPUT.put_line('No hay datos');
    ELSE
    DBMS_OUTPUT.put_line('El último identificador del centro es: '||V_MAX_ID);
    END IF;
end;
*/
/*
desc centros
insert into centros values(0,'pepe','as',12,'01008','casa','prov','999');
declare
v_max_id centros.nombre%type;
begin
  Select nombre into v_max_id
  from centros;
    dbms_output.put_line('Encontrado nombre '||v_max_id);
exception 
  when NO_DATA_FOUND then
  dbms_output.put_line('No encontrado');
  when others then 
  dbms_output.put_line('Algo pasó weee');
end;
*/
/*4*/
