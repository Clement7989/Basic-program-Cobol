       IDENTIFICATION DIVISION.
       PROGRAM-ID. ConvertTemperature.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CELSIUS    PIC S9(4)V99.  *> Champ pour la température en Celsius avec 2 décimales
       01 FAHRENHEIT PIC S9(4)V99.  *> Champ pour la température en Fahrenheit avec 2 décimales
       01 DISPLAY-CELSIUS PIC ZZ9.99. *> Champ pour l'affichage formaté

       PROCEDURE DIVISION.
           DISPLAY "Entrée de la température en degrés Fahrenheit :".
           ACCEPT FAHRENHEIT.
           COMPUTE CELSIUS = (FAHRENHEIT - 32) * 5 / 9.
           MOVE CELSIUS TO DISPLAY-CELSIUS.
           DISPLAY "La température en degrés Celsius est : "
            DISPLAY-CELSIUS.
           STOP RUN.
