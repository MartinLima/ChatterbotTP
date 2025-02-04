UNIT MENU;

INTERFACE

{$CODEPAGE UTF8}

USES
  CRT, PREGUNTAS, ARCHIVO, RESPUESTAS_MENU,VyP;

PROCEDURE MENU1 (VAR ARCH:T_ARCHIVO);

IMPLEMENTATION
PROCEDURE MENU1 (VAR ARCH:T_ARCHIVO);
VAR
 OPCION,resp:string;
BEGIN
     ABRIR(ARCH);
     BIENVENIDA();
     REPEAT
     BEGIN
          CLRSCR;
          TEXTCOLOR(green);
          GOTOXY(35,7);
            WRITELN('  MENÚ DE OPCIONES DEL ASISTENTE VIRTUAL    ');
          TEXTCOLOR(WHITE);
          GOTOXY(36,10);
            WRITELN('   1- INICIAR ASISTENTE VIRTUAL            ');
            GOTOXY(36,10);
            TEXTCOLOR(lightblue);
            WRITELN('*');
          GOTOXY(36,12);
          TEXTCOLOR(WHITE);
            WRITELN('   2- CÓMO FUNCIONA EL ASISTENTE VIRTUAL   ');
            GOTOXY(36,12);
            TEXTCOLOR(lightblue);
            WRITELN('*');
          GOTOXY(36,12);
          TEXTCOLOR(WHITE);
          GOTOXY(36,14);
            WRITELN('   0- SALIR             ');
            GOTOXY(36,14);
            TEXTCOLOR(lightblue);
            WRITELN('*');
          GOTOXY(36,14);
          TEXTCOLOR(GREEN);
          GOTOXY(36,18);
          WRITE('SELECIONE UNA OPCIÓN: ');
          textcolor(lightblue);
          READLN(OPCION);
          while not esNumero(opcion) or (opcion < '0')  or (opcion > '2') do
          begin
          textcolor(RED);
          GOTOXY(35,22);
          WRITELN(FALLO_RESP (resp));
          textcolor(yellow);
          gotoxy(35,24);
          WRITE('VOLVERA A INTENTAR EN ');
          textcolor(green);
          gotoxy(58,24);
          WRITE('5');
          DELAY(1000);
          gotoxy(58,24);
          WRITE('4');
          DELAY(1000);
          gotoxy(58,24);
          WRITE('3');
          DELAY(1000);
          gotoxy(58,24);
          WRITE('2');
          gotoxy(58,24);
          DELAY(1000);
          gotoxy(58,24);
          WRITE('1');
          gotoxy(35,24);
          delay(1000);
          writeln('                                                                                     ');
         GOTOXY(30,22);
          writeln('                                                                   ');
          textcolor(GREEN);
          gotoxy(36,18);
          write('SELECIONE UNA OPCIÓN: ');
          gotoxy(58,18);
          clreol;
          textcolor(lightblue);
          readln(opcion);
          end;
     END;
     CASE OPCION OF
     '1': INICIAR_ASISTENTE(ARCH);
     '2': FUNCIONAMIENTO();
     END;
     UNTIL (OPCION='0');
END;

END.