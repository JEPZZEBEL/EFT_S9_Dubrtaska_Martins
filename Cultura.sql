-- Crear secuencia para la tabla academia
CREATE SEQUENCE academia_seq START WITH 1 INCREMENT BY 1;

-- Crear secuencia para la tabla director
CREATE SEQUENCE director_seq START WITH 1 INCREMENT BY 1;

-- Crear secuencia para la tabla formulario
CREATE SEQUENCE formulario_seq START WITH 1 INCREMENT BY 1;

-- Crear secuencia para la tabla municipalidad
CREATE SEQUENCE municipalidad_seq START WITH 1 INCREMENT BY 1;

-- Crear secuencia para la tabla profesor
CREATE SEQUENCE profesor_seq START WITH 1 INCREMENT BY 1;

-- Crear secuencia para la tabla proyecto_concu
CREATE SEQUENCE proyecto_concu_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE turno_seq START WITH 1 INCREMENT BY 1;

-- Insertar datos en la tabla academia
INSERT INTO academia (academiaid, nombre, tipo, municipalidadid, directorid)
VALUES (academia_seq.NEXTVAL, 'Academia de Bellas Artes de Santiago', 'Privada', 1, 1);
INSERT INTO academia (academiaid, nombre, tipo, municipalidadid, directorid)
VALUES (academia_seq.NEXTVAL, 'Escuela de Arte de Valparaíso', 'Pública', 2, 2);
INSERT INTO academia (academiaid, nombre, tipo, municipalidadid, directorid)
VALUES (academia_seq.NEXTVAL, 'Academia de Danza Contemporánea', 'Privada', 3, 3);

-- Insertar datos en la tabla director
INSERT INTO director (directorid, nombre, fechainicio, academia_academiaid)
VALUES (director_seq.NEXTVAL, 'María José Quintana', TO_DATE('01/03/2018', 'DD/MM/YYYY'), 1);
INSERT INTO director (directorid, nombre, fechainicio, academia_academiaid)
VALUES (director_seq.NEXTVAL, 'Rodrigo Morales', TO_DATE('15/01/2020', 'DD/MM/YYYY'), 2);
INSERT INTO director (directorid, nombre, fechainicio, academia_academiaid)
VALUES (director_seq.NEXTVAL, 'Ana María Ruiz', TO_DATE('12/05/2017', 'DD/MM/YYYY'), 3);

-- Insertar datos en la tabla formulario
INSERT INTO formulario (postulacionid, fecha_de_postulación, nombre_de_la_organización, tipo_de_organización, rut, fecha_vencimiento_dir, dirección, unidad_vecinal_o_sector, teléfonos, correo_electrónico, número_de_cuenta_bancaria, tipo_de_cuenta_bancaria, titular_de_la_cuenta_bancaria, banco, academiaid)
VALUES (formulario_seq.NEXTVAL, TO_DATE('10/06/2024', 'DD/MM/YYYY'), 'Taller Cultural La Chimba', 'Cultural', '96.765.432-1', TO_DATE('10/12/2024', 'DD/MM/YYYY'), 'Av. La Paz 123, Santiago', 'Unidad Vecinal 45', '2223344', 'contacto@lachimba.cl', '00012345678', 'Corriente', 'Taller La Chimba', 'Banco Estado', 1);
INSERT INTO formulario (postulacionid, fecha_de_postulación, nombre_de_la_organización, tipo_de_organización, rut, fecha_vencimiento_dir, dirección, unidad_vecinal_o_sector, teléfonos, correo_electrónico, número_de_cuenta_bancaria, tipo_de_cuenta_bancaria, titular_de_la_cuenta_bancaria, banco, academiaid)
VALUES (formulario_seq.NEXTVAL, TO_DATE('15/06/2024', 'DD/MM/YYYY'), 'Colectivo Artístico Valpo', 'Artístico', '98.654.321-0', TO_DATE('15/12/2024', 'DD/MM/YYYY'), 'Calle Condell 101, Valparaíso', 'Unidad Vecinal 12', '322334455', 'contacto@artvalpo.cl', '00022334455', 'Ahorro', 'Colectivo Valpo', 'Santander', 2);
INSERT INTO formulario (postulacionid, fecha_de_postulación, nombre_de_la_organización, tipo_de_organización, rut, fecha_vencimiento_dir, dirección, unidad_vecinal_o_sector, teléfonos, correo_electrónico, número_de_cuenta_bancaria, tipo_de_cuenta_bancaria, titular_de_la_cuenta_bancaria, banco, academiaid)
VALUES (formulario_seq.NEXTVAL, TO_DATE('20/06/2024', 'DD/MM/YYYY'), 'Escuela de Danza Chilena', 'Cultural', '97.456.789-0', TO_DATE('20/12/2024', 'DD/MM/YYYY'), 'Av. Providencia 567, Santiago', 'Unidad Vecinal 8', '226789012', 'info@danzachilena.cl', '00033445566', 'Corriente', 'Escuela Danza', 'BCI', 3);

-- Insertar datos en la tabla municipalidad
INSERT INTO municipalidad (municipalidadid, nombre, región, academia_academiaid)
VALUES (municipalidad_seq.NEXTVAL, 'Municipalidad de Santiago', 'Región Metropolitana', 1);
INSERT INTO municipalidad (municipalidadid, nombre, región, academia_academiaid)
VALUES (municipalidad_seq.NEXTVAL, 'Municipalidad de Valparaíso', 'Región de Valparaíso', 2);
INSERT INTO municipalidad (municipalidadid, nombre, región, academia_academiaid)
VALUES (municipalidad_seq.NEXTVAL, 'Municipalidad de Concepción', 'Región del Biobío', 3);

-- Insertar datos en la tabla profesor
INSERT INTO profesor (profesorid, nombre, tipocontratacion, remuneracion, turno_turnoid)
VALUES (profesor_seq.NEXTVAL, 'Gabriel Araya', 'Contratado', 1500000, 1);
INSERT INTO profesor (profesorid, nombre, tipocontratacion, remuneracion, turno_turnoid)
VALUES (profesor_seq.NEXTVAL, 'Fernanda Soto', 'Freelance', 1000000, 2);
INSERT INTO profesor (profesorid, nombre, tipocontratacion, remuneracion, turno_turnoid)
VALUES (profesor_seq.NEXTVAL, 'Carlos Urrutia', 'Contratado', 1200000, 3);

-- Insertar datos en la tabla proyecto_concu
INSERT INTO proyecto_concu (proyectoid, nombre, academiaid, academia_academiaid)
VALUES (proyecto_concu_seq.NEXTVAL, 'Proyecto de Danza Tradicional', 1, 1);
INSERT INTO proyecto_concu (proyectoid, nombre, academiaid, academia_academiaid)
VALUES (proyecto_concu_seq.NEXTVAL, 'Fomento al Arte Juvenil', 2, 2);
INSERT INTO proyecto_concu (proyectoid, nombre, academiaid, academia_academiaid)
VALUES (proyecto_concu_seq.NEXTVAL, 'Exhibición de Arte Contemporáneo', 3, 3);

-- Insertar datos en la tabla relation_7
INSERT INTO relation_7 (academia_academiaid, turno_turnoid)
VALUES (1, 1);
INSERT INTO relation_7 (academia_academiaid, turno_turnoid)
VALUES (2, 2);
INSERT INTO relation_7 (academia_academiaid, turno_turnoid)
VALUES (3, 3);

-- Insertar datos en la tabla turno
INSERT INTO turno (turnoid, horario, academiaid, profesorid)
VALUES (turno_seq.NEXTVAL, '08:00 - 12:00', 1, 1);
INSERT INTO turno (turnoid, horario, academiaid, profesorid)
VALUES (turno_seq.NEXTVAL, '14:00 - 18:00', 2, 2);
INSERT INTO turno (turnoid, horario, academiaid, profesorid)
VALUES (turno_seq.NEXTVAL, '10:00 - 14:00', 3, 3);


select * FROM academia;

select * FROM DIRECTOR;

select * FROM MUNICIPALIDAD;

select * FROM profesor;

select * FROM PROYECTO_CONCU;

select * FROM RELATION_7;

select * FROM turno;

select * from formulario;


