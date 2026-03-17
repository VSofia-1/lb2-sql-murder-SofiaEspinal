-- 1
-- Conclusion: Se identificaron 2 testigos
-- Captura: paso1_repote.png

SELECT * FROM crime_scene_report
WHERE date = 20180115 AND city = 'SQL City' AND type = 'murder';

-----------------------------------------------------------------------
-- 2 
-- Conclusion: Annabel es un testigo
-- Captura: paso2_persona1.png

SELECT * FROM person
WHERE address_street_name == "Franklin Ave"

-----------------------------------------------------------------------
--3
-- Conclusion: Morty es el segundo testigo
-- Captura: paso3_persona2.png

SELECT * FROM person
WHERE address_street_name == "Northwestern Dr"

-----------------------------------------------------------------------
--4
-- Conclusion: Tenemos pistas del sospechoso
-- Captura: paso4_entrevistas.png

SELECT * FROM interview
WHERE person_id == 14887 or person_id == 16371

-----------------------------------------------------------------------
-- 5 
-- Conclusion: Hay dos personas que coinciden con la descripcion del gimnasio
-- Captura: paso5_miembros.png

SELECT * FROM get_fit_now_member
WHERE membership_status == 'gold' AND id LIKE '48Z%'

-------------------------------------------------------------------------
-- 6 
-- Conclusion: No hay pistas por aqui
-- Captura: paso6_checkin.png

SELECT * FROM get_fit_now_check_in
WHERE membership_id == '48Z7A' or membership_id == '48Z55'

-------------------------------------------------------------------------
--7
--Conclusión: hay tres personas que tienen esa placa en el vehiculo (estamos cerca)
--Captura: paso7_autos.png

SELECT * FROM driver_license
WHERE plate_number LIKE '%H42W%'

--------------------------------------------------------------------------
-- 8
--Conclusion: Hay coincidencias en todas las pistas, tenemos el asesino
--Captura: paso8_asesino.png
  
SELECT * FROM person
WHERE license_id == 183779 or license_id == 423327 or license_id == 664760
  
----------------------------------------------------------------------------
--9
--Conclusion: El asesino es Jeremy Bowers
--Captura: paso9_solucion.png
  
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        
        SELECT value FROM solution;
