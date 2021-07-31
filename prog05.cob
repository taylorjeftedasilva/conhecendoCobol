        IDENTIFICATION DIVISION.
        PROGRAM-ID. PROG05.
        ENVIRONMENT DIVISION.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
        77 WRK-NUM1               PIC 9(02) VALUES ZEROS.
        77 WRK-NUM2               PIC 9(02) VALUES ZEROS.
        77 WRK-RESUL              PIC 9(04) VALUES ZEROS.
        77 WRK-RESTO              PIC 9(02) VALUES ZEROS.
        PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           *> add é equivalente a soma.
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
            DISPLAY "RESULTADO ADD: " WRK-RESUL.
           *> subtract é equivalente a subtração.
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
            DISPLAY "RESULTADO SUBTRACT: " WRK-RESUL.
           *> divide é equivalente a divisão.
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING  WRK-RESUL REMAINDER WRK-RESTO.
            DISPLAY "RESULTADO DIVIDE: "  WRK-RESUL.
            DISPLAY "RESULTADO RESTO: "  WRK-RESTO.
           *> multiply é equivalente a multipicação
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
            DISPLAY "RESULTADO MULTIPLICACAO: " WRK-RESUL.
           *> RESOLVE EXPRESSÕES COMPLETAS
           COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2) / 2.
            DISPLAY "RESULTADO DA MEDIA: " WRK-RESUL.
           STOP RUN.