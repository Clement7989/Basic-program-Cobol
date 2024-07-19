      IDENTIFICATION DIVISION.
       PROGRAM-ID. CalculateBMI.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WEIGHT      PIC 9(3)V99.  *> Poids en kilogrammes
       01 HEIGHT      PIC 9(2)V99.  *> Taille en mètres
       01 BMI         PIC 9(3)V99.  *> Indice de Masse Corporelle

       PROCEDURE DIVISION.
           DISPLAY "Entrée du poids en kilogrammes :".
           ACCEPT WEIGHT.
           DISPLAY "Entrée de la taille en mètres (par exemple 1.75) :".
           ACCEPT HEIGHT.
           COMPUTE BMI = WEIGHT / (HEIGHT * HEIGHT).
           DISPLAY "L'Indice de Masse Corporelle (IMC) est : " BMI.
           STOP RUN.