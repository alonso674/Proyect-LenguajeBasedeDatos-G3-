------------------------------------ SPs para CRUD de HOTEL_TAB

----INSERT
create or replace PROCEDURE SP_INSERT_HOTEL(
ID_DIRECCION_V NUMBER,
ID_HORARIO_V NUMBER,
NOMBRE_V NVARCHAR2,
TELEFONO_V NVARCHAR2,
CORREO_V NVARCHAR2
)
is 
begin

    INSERT INTO HOTEL_TB(ID_DIRECCION ,ID_HORARIO ,NOMBRE ,TELEFONO ,CORREO )
    VALUES (ID_DIRECCION_V ,ID_HORARIO_V ,NOMBRE_V ,TELEFONO_V ,CORREO_V);
    COMMIT;
end;
/
--EXECUTE SP_INSERT_HOTEL(1,1,1, 'NOMBRE', '123456789', 'NOMBRE@ejemplo.com');


----UPDATE
create or replace PROCEDURE SP_UPDATE_HOTEL(
ID_HOTEL_V NUMBER,
ID_DIRECCION_V NUMBER,
ID_HORARIO_V NUMBER,
NOMBRE_V NVARCHAR2,
TELEFONO_V NVARCHAR2,
CORREO_V NVARCHAR2
)
is 
begin
    UPDATE HOTEL_TB SET
    ID_DIRECCION  = ID_DIRECCION_V,
    ID_HORARIO = ID_HORARIO_V,
    NOMBRE = NOMBRE_V,
    TELEFONO = TELEFONO_V,
    CORREO = CORREO_V
    WHERE ID_HOTEL = ID_HOTEL_V;
    COMMIT;
end;

/
--EXECUTE SP_UPDATE_HOTEL(1,1,1, 'NOMBRE_UPD', '123456789', 'UPDATE@ejemplo.com');


----DELETE
create or replace PROCEDURE SP_DELETE_HOTEL(
ID_HOTEL_V NUMBER
)
is 
begin

    DELETE FROM HOTEL_TB
    WHERE ID_HOTEL = ID_HOTEL_V;
    
    COMMIT;
end;

--EXECUTE SP_DELETE_HOTEL(1);
/

------------------------------------ SPs para CRUD de DIRECCION_TB

----INSERT
create or replace PROCEDURE SP_INSERT_DIRECCION(
PROVINCIA_V NVARCHAR2,
CANTON_V NVARCHAR2,
DISTRITO_V NVARCHAR2,
DIRECCION_DETALLADA_V NVARCHAR2
)
is 
begin

    INSERT INTO DIRECCION_TB(PROVINCIA ,CANTON ,DISTRITO ,DIRECCION_DETALLADA )
    VALUES (PROVINCIA_V ,CANTON_V ,DISTRITO_V ,DIRECCION_DETALLADA_V);
    COMMIT;
end;
/
--EXECUTE SP_INSERT_DIRECCION('HEREDIA', 'SANTA BARBARA', 'SANTA BARBARA', 'DETRAS DE LA PARROQUIA 100 SUR');


----UPDATE
create or replace PROCEDURE SP_UPDATE_DIRECCION(
ID_DIRECCION_V NUMBER,
PROVINCIA_V NVARCHAR2,
CANTON_V NVARCHAR2,
DISTRITO_V NVARCHAR2,
DIRECCION_DETALLADA_V NVARCHAR2
)
is 
begin
    UPDATE DIRECCION_TB SET
    PROVINCIA = PROVINCIA_V,
    CANTON = CANTON_V,
    DISTRITO = DISTRITO_V,
    DIRECCION_DETALLADA = DIRECCION_DETALLADA_V
    WHERE ID_DIRECCION = ID_DIRECCION_V;
    COMMIT;
end;

/
--EXECUTE SP_UPDATE_DIRECCION('HEREDIA', 'SANTA BARBARA', 'SAN PEDRO', '500 NORTE DEL PARQUE');


----DELETE
create or replace PROCEDURE SP_DELETE_DIRECCION(
ID_DIRECCION_V NUMBER
)
is 
begin

    DELETE FROM DIRECCION_TB
    WHERE ID_DIRECCION = ID_DIRECCION_V;
    
    COMMIT;
end;

--EXECUTE SP_DELETE_DIRECCION(1);

/
------------------------------------ SPs para CRUD de SERVICIO_HOTEL_TAB

----INSERT
create or replace PROCEDURE SP_INSERT_SERVICIO_HOTEL(
ID_HOTEL_V NUMBER,
NOMBRE_V NVARCHAR2,
ESTADO_V NVARCHAR2
)
is 
begin

    INSERT INTO SERVICIO_HOTEL_TAB(ID_HOTEL ,NOMBRE ,ESTADO )
    VALUES (ID_HOTEL_V ,NOMBRE_V ,ESTADO_V);
    COMMIT;
end;
/
--EXECUTE SP_INSERT_SERVICIO_HOTEL(1, 'SERVICIO', 'ACTIVO');


----UPDATE
create or replace PROCEDURE SP_UPDATE_SERVICIO_HOTEL(
ID_SERVICIO_HOTEL_V NUMBER,
NOMBRE_V NVARCHAR2,
ESTADO_V NVARCHAR2
)
is 
begin
    UPDATE SERVICIO_HOTEL_TAB SET
    NOMBRE = NOMBRE_V,
    ESTADO = ESTADO_V
    WHERE ID_SERVICIO_HOTEL = ID_SERVICIO_HOTEL_V;
    COMMIT;
end;

/
--EXECUTE SP_UPDATE_SERVICIO_HOTEL(1, 'SERVICIO', 'INACTIVO');


----DELETE
create or replace PROCEDURE SP_DELETE_SERVICIO_HOTEL(
ID_SERVICIO_HOTEL_V NUMBER
)
is 
begin

    DELETE FROM SERVICIO_HOTEL_TAB
    WHERE ID_SERVICIO_HOTEL = ID_SERVICIO_HOTEL_V;
    
    COMMIT;
end;

--EXECUTE SP_DELETE_SERVICIO_HOTEL(1);
/



    
    
    
    
    
    
