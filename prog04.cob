        IDENTIFICATION DIVISION.
        PROGRAM-ID. PROG04.
      *>********************************************
      *> �REA DE COMENT�RIOS DO COBOL
      *> AUTOR TAYLOR
      *> OBJETIVO TROCA DE FLUTUANTE . PARA VIRGULA.
      *>********************************************
        ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
        SPECIAL-NAMES.
            DECIMAL-POINT IS COMMA.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
        77 WRK-NOME               PIC X(20) VALUES SPACES.
        *> O V AP�S OS PARENTESES REPRESENTA UMA CASA DECIMAL
        77 WRK-SALARIO            PIC 9(6)V99 VALUES ZEROS.
        77 WRK-SALARIO-ED         PIC $ZZZ.ZZ9,99 VALUES ZEROS. 
        *> Z SIGNIFIA INTEIROS POR�M CASO HOUVER ZEROS SER� REMOVIDO
        *> O $ ESTABELECE UM PADR�O PARA A M�SCARA
        PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           ACCEPT WRK-SALARIO FROM CONSOLE.
           MOVE WRK-SALARIO TO WRK-SALARIO-ED.
           DISPLAY 'NOME: 'WRK-NOME.
           DISPLAY 'SALARIO 'WRK-SALARIO-ED.
           STOP RUN.