declare
  A CENTROS.ID%TYPE;
  B CENTROS.NOMBRE%TYPE;
begin
  select CENTROS.NOMBRE INTO B FROM CENTROS WHERE UPPER(NOMBRE) = 'ABRERA';
  
  IF SQL%FOUND THEN
    'Ya hay un centro con el nombre Abrera');
  END IF;
exception
  when NO_DATA_FOUND then
    INSERT INTO CENTROS(NOMBRE)
              VALUES('Abrera');
    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('Ningun valor insertado');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Insertado el centro');
        COMMIT;
    END IF;
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Hay más de un centro con el nombre Abrera');
end;
