        IDENTIFICATION DIVISION.
        PROGRAM-ID. PROG02.
       *>*************************************
       *> ?REA DE COMENT?RIOS DO COBOL
       *> AUTOR = TAYLOR 
       *> OBJETIVO = IMPRIMIR UMA VARIAVEL 
       *>**************************************         
        ENVIRONMENT DIVISION. 
        DATA DIVISION.
       *> SE??O PARA DECLARAR VARIAVEIS
        WORKING-STORAGE SECTION.
       *> AQUI DECLARAMOS A VARIAVEL NOME COMO BOA PR?TICA COLOCAMOS O PREFIXO WRK
       *> O PIC SERIA REFERENTE A M?SCARA (TIPO) E PRECISAMOS INICIALIZAR A VARIAVEL COM UM VALOR
       *> NESSE CASSO INICIALIZAMOS COM ESPA?OS. NO CASO DE UMA N?MERICA (9) PODERIA SER ZEROS.
        77 WRK-NOME PIC X(20) VALUES SPACES.
        PROCEDURE DIVISION.
       *> ACCEPT EQUIVALENTE AO INPUT() DO PYTHON FROM CONSOLE INDICA QUE A ENTRADA VEM DO CONSOLE
           ACCEPT WRK-NOME FROM CONSOLE.
       *> A CONCATENA??O NO DISPLAY ? FEITA PELO ESPA?O DIFERENTE DE OUTRAS LINGUAGENS QUE USAM O +
           DISPLAY 'ENTRADA DE DADOS ' WRK-NOME.
       *> para tratar a variavel como uma corrente de caracteres uso o (p0:pn)
           DISPLAY 'ENTRADA DE DADOS ' WRK-NOME(9:10).
           STOP RUN.