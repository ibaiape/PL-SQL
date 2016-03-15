DECLARE
a CENTROS.ID%TYPE;
BEGIN
SELECT MAX(ID) INTO a FROM CENTROS;
  update CENTROS
    SET provincia='Araba'
    where ID=a;
  IF SQL%FOUND THEN
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Actualizado el centro: '||a);
  ELSE
    DBMS_OUTPUT.PUT_LINE('No existe el centro: '||a);
  END IF;
END;
