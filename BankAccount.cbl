       IDENTIFICATION DIVISION.
       PROGRAM-ID. BankAccount.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  ACCOUNT-BALANCE     PIC 9(10)V99 VALUE 0.00.
       01  TRANSACTION-AMOUNT  PIC 9(10)V99 VALUE 0.00.
       01  TRANSACTION-TYPE    PIC X(10).

       PROCEDURE DIVISION.

           DISPLAY "--------------------------------------".
           DISPLAY "     GESTION DU COMPTE EN BANQUE      ".
           DISPLAY "--------------------------------------".

           DISPLAY
            "Entrée le solde initial de votre compte (ex: 1000.00) :".
           ACCEPT ACCOUNT-BALANCE.

           DISPLAY "Souhaitez-vous effectuer un dépôt ou un retrait ?".
           DISPLAY "(dépôt ou retrait)".
           ACCEPT TRANSACTION-TYPE.

           DISPLAY "Entrée le montant de la transaction (ex: 150.00) :".
           ACCEPT TRANSACTION-AMOUNT.

           
           IF TRANSACTION-TYPE = "dépôt"
               ADD TRANSACTION-AMOUNT TO ACCOUNT-BALANCE
           ELSE IF TRANSACTION-TYPE = "retrait"
               SUBTRACT TRANSACTION-AMOUNT FROM ACCOUNT-BALANCE
           ELSE
               DISPLAY "Transaction invalide !"
           END-IF.


           DISPLAY "Votre "TRANSACTION-TYPE"sur votre compte bancaire"
           DISPLAY "a bien été effectué.".
           DISPLAY
            "Le solde après transaction est de : " ACCOUNT-BALANCE.
           STOP RUN.
