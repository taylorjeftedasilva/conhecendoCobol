        IDENTIFICATION DIVISION.
        PROGRAM-ID. PROG03.
       *>**************************************************
       *> ?REA DE COMENT?RIO DO PROGRAMA COBOL
       *> AUTOR = TAYLOR
       *> OBJETIVO = IMPRIMIR UMA DATA NO FORMATO CORRETO
       *>************************************************** 
        ENVIRONMENT DIVISION. 
        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 WRK-DATA.
           *> AQUI DENTRO OS N?VEIS PODEM IR DE 02 AO 49
           02 WRK-ANO PIC 9(4).
           02 WRK-MES PIC 9(2).
           02 WRK-DIA PIC 9(2).
        PROCEDURE DIVISION.
       *> ACCEPT CARACTERIA UMA ENTRADA DE DADOS EM UMA VARIAVEL, DEPOIS DO FROM INDICAMOS DE ONDE VEM ESSA ENTRADA
       *> NO CAMPO DATA PODEMOS INDICAR O FORMATO QUE QUEREMOS RECEBER DO SISTEMA SE ? DE 4 DIGITOS O ANO OU DE DOIS
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY 'DATA: ' WRK-DIA '/' WRK-MES '/' WRK-ANO.
           STOP RUN.