# lb2-sql-murder-SofiaEspinal

## Datos 

* Detective: Sofia Espinal Vásquez
* Correo: sofia.evasquez@udea.edu.co

## Resumen del caso

Se ha cometido un crimen y el detective necesita ayuda. El detective entregó el informe de la escena del crimen, pero se perdió. Lo único que tenemos como pista y recuerdo del informe es que se trató de un asesinato ocurrido el 15 de enero de 2018 en SQL City.

## Bitácora de investigación

### Query 1

```
SELECT * FROM crime_scene_report
WHERE date = 20180115 AND city = 'SQL City' AND type = 'murder';
```
#### Evidencia

![This is an alt text.](/evidencia/paso1_reporte.png)

>#### Conclusión
>Según lo que se guardó en el reporte, las cámaras de seguridad lograron identificar dos testigos, de los cuales uno tenemos el nombre y la direccion y el otro solo el nombre


### Query 2

```
SELECT * FROM person
WHERE address_street_name == "Franklin Ave"
```
#### Evidencia

![This is an alt text.](/evidencia/paso2_persona1.png)

>#### Conclusión
>Identificamos quien es uno de los testigos del día del crimen, por medio del nombre del barrio y como información adicional teníamos que se llamaba Annabel, de aqui podemos tener como dato principal su id para la entrevista 

### Query 3

```
SELECT * FROM person
WHERE address_street_name == "Northwestern Dr"
```
#### Evidencia

![This is an alt text.](/evidencia/paso3_persona2.png)

>#### Conclusión
>Identificamos quien es el segundo testigo del asesinato, ya que teniamos como pista que vivía en la última casa de Northwestern Dr y para identificarla, usamos el número más alto de la columna "address number"

### Query 4

```
SELECT * FROM interview
WHERE person_id == 14887 or person_id == 16371
```
#### Evidencia

![This is an alt text.](/evidencia/paso4_entrevistas.png)

>#### Conclusión
>Podemos ver que Morty Schapiro (id = 14887) dió varias pistas importantes como: Llevaba una bolsa del gimnasio «Get Fit Now». El número de socio que figuraba en la bolsa empezaba por «48Z». Solo los socios Gold tienen esas bolsas. El hombre se subió a un coche cuya matrícula incluía «H42W». Y la señorita Annabel (id = 16371) reconoció el asesino en el gimnasio el 9 de enero 

