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
