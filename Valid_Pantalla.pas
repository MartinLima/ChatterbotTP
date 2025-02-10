UNIT VYP;

{$CODEPAGE UTF8}

INTERFACE

USES
CRT, SYSUTILS,GRAPH;

 PROCEDURE CAJA (X1,Y1,X2,Y2:BYTE);
FUNCTION ESCADENA(INPUT: STRING): BOOLEAN;
FUNCTION ESNUMERO(INPUT: STRING): BOOLEAN;
 PROCEDURE PANTALLACARGA;
 PROCEDURE PANTALLACARGA2;
 PROCEDURE MOSTRARPANTALLAINICIO;
 PROCEDURE BIENVENIDA();
 FUNCTION ELOGIO_RESP(): STRING;
 FUNCTION FALLO_RESP(): STRING;
 FUNCTION ESCRIBIENDO ():STRING;
 FUNCTION DESPEDIDA_RESP(): STRING;
 FUNCTION GRACIAS_RESP(): STRING;
 FUNCTION SALUDO_RESP(): STRING;



IMPLEMENTATION
PROCEDURE PantallaCarga2;
VAR
  i, centroX, centroY, anchoConsola, altoConsola: INTEGER;
BEGIN
  CLRSCR;
  anchoConsola := 120;
  altoConsola := 35;
  centroX := (anchoConsola DIV 2) - 20;
  centroY := (altoConsola DIV 2) - 3;

  TEXTCOLOR(WHITE);
  GOTOXY(centroX, centroY);
  WRITE('CONFIRMANDO DATOS, POR FAVOR ESPERE ...');
  TEXTCOLOR(GREEN);

  GOTOXY(centroX, centroY + 2);
  WRITE('[');
  GOTOXY(centroX + 40, centroY + 2);
  WRITE(']');

  FOR i := centroX + 1 TO centroX + 39 DO
  BEGIN
    GOTOXY(i, centroY + 2);
    WRITE('-');
    DELAY(100);
  END;

  GOTOXY(centroX + 10, centroY + 4);
  TEXTCOLOR(WHITE);
  WRITELN('  CARGA EXITOSA !  ');
  DELAY(500);
END;

PROCEDURE PantallaCarga;
VAR
 i, centroX, centroY, anchoConsola, altoConsola: INTEGER;
BEGIN
 CLRSCR;
 anchoConsola := 120;
 altoConsola := 35;
 centroX := (anchoConsola DIV 2) - 20;
 centroY := (altoConsola DIV 2) - 3;

 TEXTCOLOR(WHITE);
 GOTOXY(centroX, centroY);
 WRITE('CERRANDO EL PROGRAMA, POR FAVOR ESPERE ...');
 TEXTCOLOR(GREEN);

 GOTOXY(centroX, centroY + 2);
 WRITE('[');
 GOTOXY(centroX + 40, centroY + 2);
 WRITE(']');

 FOR i := centroX + 1 TO centroX + 39 DO
 BEGIN
   GOTOXY(i, centroY + 2);
   WRITE('-');
   DELAY(50);
 END;

 GOTOXY(centroX + 10, centroY + 4);
 TEXTCOLOR(WHITE);
 WRITELN('  CARGA COMPLETA!  ');
 DELAY(500);
END;

FUNCTION SALUDO_RESP(): STRING;
VAR
  NUM: BYTE;
BEGIN
  NUM := RANDOM(10);
  CASE NUM OF
    0: SALUDO_RESP := '¡Hola! ¿Cómo estás?';
    1: SALUDO_RESP := '¡Buenas! ¿Como va eso?';
    2: SALUDO_RESP := '¡Hola, qué tal! ¿Cómo te va?';
    3: SALUDO_RESP := '¡Hola! Encantado de verte';
    4: SALUDO_RESP := '¡Qué tal! ¿En qué te puedo ayudar?';
    5: SALUDO_RESP := '¡Hola, hola! ¿Todo bien por ahí?';
    6: SALUDO_RESP := '¡Buenas Buenas! ¿Qué tal tu día?';
    7: SALUDO_RESP := '¡Hola! ¿En qué puedo asesorarte?';
    8: SALUDO_RESP := '¿Todo bien?';
    9: SALUDO_RESP := '¡Ey, como estás! ¿Todo tranqui?';
  END;
END;



FUNCTION GRACIAS_RESP(): STRING;
VAR
  NUM: BYTE;
BEGIN
  NUM := RANDOM(7);
  CASE NUM OF
    0: GRACIAS_RESP := '¡De nada, para eso estoy!';
    1: GRACIAS_RESP := '¡Con gusto, me encanta ayudarte!';
    2: GRACIAS_RESP := '¡Es un placer, cualquier cosa estoy acá!';
    3: GRACIAS_RESP := '¡No hay de qué, me alegra ser útil!';
    4: GRACIAS_RESP := '¡A ti por preguntar, siempre disponible!';
    5: GRACIAS_RESP := '¡Es un placer ayudarte, no dudes en volver!';
    6: GRACIAS_RESP := 'Con mucho gusto, ¡siempre a tu disposición!';
  END;
END;


PROCEDURE BIENVENIDA();
BEGIN
  CLRSCR;
  CAJA(45,8,75,20);
  TEXTCOLOR(WHITE);
  GOTOXY(53,12);
  WRITELN('BIENVENIDO A TU ');
  GOTOXY(56,14);
  WRITELN('ASISTENTE');
  GOTOXY(57,16);
  WRITELN('VIRTUAL');
  GOTOXY(53,20);
  TEXTCOLOR(GREEN);
  WRITELN(' OPRIMA [ENTER] ');
  READKEY;
  END;

FUNCTION DESPEDIDA_RESP(): STRING;
VAR
  NUM: BYTE;
BEGIN
  NUM := RANDOM(15);
  CASE NUM OF
    0: DESPEDIDA_RESP := '¡Hasta pronto!';
    1: DESPEDIDA_RESP := '¡Nos vemos luego!';
    2: DESPEDIDA_RESP := '¡Cuídate, hasta la próxima!';
    3: DESPEDIDA_RESP := '¡Adiós, que tengas un buen día!';
    4: DESPEDIDA_RESP := '¡Hasta la próxima, que estés bien!';
    5: DESPEDIDA_RESP := '¡Que te vaya bien, hasta pronto!';
    6: DESPEDIDA_RESP := '¡Nos vemos, no dudes en regresar!';
    7: DESPEDIDA_RESP := '¡Chau, que todo te salga genial!';
    8: DESPEDIDA_RESP := '¡Adiós, fue un placer ayudarte!';
    9: DESPEDIDA_RESP := '¡Hasta luego, cuídate mucho!';
    10: DESPEDIDA_RESP := '¡Bye, espero verte pronto!';
    11: DESPEDIDA_RESP := '¡Que tengas un buen día, hasta luego!';
    12: DESPEDIDA_RESP := '¡Hasta la vista, que estés bien!';
    13: DESPEDIDA_RESP := '¡Nos vemos, no dudes en volver a preguntar!';
    14: DESPEDIDA_RESP := '¡Chao, que tengas un excelente día!';
  END;
END;


FUNCTION FALLO_RESP(): STRING;
VAR
  NUM: BYTE;
BEGIN
  NUM := RANDOM(7);
  CASE NUM OF
    0: FALLO_RESP := 'LO SIENTO, INTENTEMOS DE NUEVO';
    1: FALLO_RESP := 'PERDÓN, INTENTA OTRA VEZ';
    2: FALLO_RESP := 'DISCULPA, PRUEBA OTRA CONSULTA';
    3: FALLO_RESP := 'LO LAMENTO, INTENTA DE NUEVO';
    4: FALLO_RESP := 'UPS, ALGO SALIÓ MAL, VUELVE A INTENTARLO';
    5: FALLO_RESP := 'OH NO, INTENTA OTRA VEZ';
    6: FALLO_RESP := 'NO ENCONTRÉ INFORMACIÓN, INTENTA REFORMULAR';
  END;
END;


FUNCTION ELOGIO_RESP(): STRING;
VAR
  NUM: BYTE;
BEGIN
  NUM := RANDOM(13);
  CASE NUM OF
    0: ELOGIO_RESP := 'Muy buena pregunta';
    1: ELOGIO_RESP := 'Excelente consulta';
    2: ELOGIO_RESP := 'Interesante pregunta';
    3: ELOGIO_RESP := 'Gran tema';
    4: ELOGIO_RESP := 'Muy buen planteo';
    5: ELOGIO_RESP := 'Qué buena observación';
    6: ELOGIO_RESP := 'Muy buena pregunta';
    7: ELOGIO_RESP := 'Esa es una excelente consulta';
    8: ELOGIO_RESP := 'Una excelente forma de plantear el tema';
    9: ELOGIO_RESP := 'Qué interesante';
    10: ELOGIO_RESP := 'Sé lo que necesitas!';
    11: ELOGIO_RESP := '¡Pero claro!';
  END;
END;


FUNCTION ESCRIBIENDO(): STRING;
BEGIN
  TEXTCOLOR(LIGHTGREEN);
  GOTOXY(1, WHEREY);
  WRITE('ESCRIBIENDO');
  DELAY(1000);
  WRITE('.');
  DELAY(1000);
  WRITE('.');
  DELAY(1000);
  WRITE('.');
  DELAY(1000);
  CLREOL;
  GOTOXY(1, WHEREY);
  CLREOL;
END;


PROCEDURE CAJA (X1,Y1,X2,Y2:BYTE);
VAR
   I:INTEGER;
BEGIN
  CLRSCR;
FOR I:= X1 TO X2 DO
BEGIN
  TEXTCOLOR(YELLOW);
  GOTOXY(I,Y1);
  WRITE('-');
  GOTOXY(I,Y2);
  WRITE('-');
  END;
  TEXTCOLOR(GREEN);
  FOR I:=Y1 TO Y2 DO
  BEGIN
  GOTOXY(X1,I);
  WRITE('[]');
  GOTOXY(X2,I);
  WRITE('[]');
  END;

END;


FUNCTION ESCADENA(INPUT: STRING): BOOLEAN;
VAR
  I: INTEGER;
  STOP: BOOLEAN;
BEGIN
  ESCADENA := TRUE;
  STOP := FALSE;
  I := 1;
  WHILE( I <= LENGTH(INPUT)) AND (NOT STOP) DO
  BEGIN
    IF NOT (UPCASE(INPUT[I]) IN ['A'..'Z', ' ']) THEN
    BEGIN
      ESCADENA := FALSE;
      STOP := TRUE;
    END;
    INC(I);
  END;
END;

 FUNCTION ESNUMERO(INPUT: STRING): BOOLEAN;
 VAR
   I: INTEGER;
 BEGIN
   FOR I := 1 TO LENGTH(INPUT) DO
   BEGIN
     IF NOT (INPUT[I] IN ['0'..'9']) THEN
     BEGIN
       ESNUMERO := FALSE;
       EXIT;
     END;
   END;
   ESNUMERO := TRUE;
 END;




PROCEDURE MOSTRARPANTALLAINICIO;
CONST
    MENSAJES: ARRAY[1..5] OF STRING = (
        'ANALIZANDO BASES DE DATOS...',
        'CARGANDO MODULOS PRINCIPALES...',
        'OPTIMIZANDO RENDIMIENTO...',
        'VERIFICANDO INTEGRIDAD DE DATOS...',
        'INICIALIZANDO INTERFAZ...'
    );
VAR
    I, J: INTEGER;
    MENSAJEINDEX: INTEGER;
BEGIN
    CLRSCR;
    GOTOXY(45, 9);
    TEXTCOLOR(GREEN);
    WRITELN('---                    ---');
    TEXTCOLOR(WHITE);
    GOTOXY(49, 9);
    WRITELN('INICIANDO PROGRAMA');
    GOTOXY(49, 14);
    WRITELN('POR FAVOR ESPERE...');

    FOR I := 1 TO 20 DO
    BEGIN
        MENSAJEINDEX := RANDOM(5) + 1;
        GOTOXY(45, 18);
        WRITE(MENSAJES[MENSAJEINDEX], '            ');

        GOTOXY(45, 16);
        WRITE('[');
        FOR J := 1 TO I DO
            WRITE('=');
        FOR J := I + 1 TO 20 DO
            WRITE(' ');
        WRITE('] ', I * 5, '%');

        DELAY(400);
    END;

    GOTOXY(35, 23);
    TEXTCOLOR(GREEN);
    WRITELN('CARGA COMPLETA. PRESIONE UNA TECLA PARA CONTINUAR...');
    READKEY;
END;



END.