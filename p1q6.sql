INSERT INTO CENTRO VALUES(1,'a','a','a','a','a','a','a');
INSERT INTO CENTRO VALUES(2,'b','b','b','b','b','b','b');
INSERT INTO TIPOTRABAJADOR VALUES(1, 'Administracion');
INSERT INTO TIPOTRABAJADOR VALUES(2, 'Logistica');
INSERT INTO TRABAJADOR VALUES(1,1,1,'A','A','A','A',NULL,NULL,'9',NULL,'A','A','A','A');
INSERT INTO TRABAJADOR VALUES(3,2,1,'C','C','C','C',NULL,NULL,'9',NULL,'C','C','C','C');
INSERT INTO TRABAJADOR VALUES(2,2,2,'B','B','B','B',NULL,NULL,'9',NULL,'B','B','B','B');
commit;
select idTrabajador, dni, nombre, ape1, ape2, fechanac, salario, movilEmp, tlfPersonal, calle, portal, piso, mano from TRABAJADOR where idCentro =1 AND idTipo = (SELECT IDTIPO FROM TIPOTRABAJADOR WHERE UPPER(TIPO) LIKE 'LOGISTICA');