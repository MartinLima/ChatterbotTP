unit VyP;

{$CODEPAGE UTF8}

interface

uses
CRT, SYSUTILS;

 PROCEDURE CAJA (X1,Y1,X2,Y2:BYTE);
function EsCadena(input: string): boolean;
function EsNumero(input: string): boolean;
 PROCEDURE PantallaCarga;
 PROCEDURE PantallaCarga2;
 procedure MostrarPantallaInicio;
 PROCEDURE BIENVENIDA();



implementation

PROCEDURE BIENVENIDA();
BEGIN
  CLRSCR;
  CAJA(45,8,75,20);
  TEXTCOLOR(white);
  GOTOXY(53,12);
  WRITELN('BIENVEDIO A TU ');
  GOTOXY(56,14);
  WRITELN('ASISTENTE');
  GOTOXY(57,16);
  WRITELN('VIRTUAL');
  GOTOXY(53,20);
  TEXTCOLOR(GREEN);
  WRITELN(' OPRIMA [ENTER] ');
  READKEY;
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


function EsCadena(input: string): boolean;
var
  i: integer;
  stop: boolean;
begin
  EsCadena := true;
  stop := false;
  i := 1;
  while( i <= Length(input)) and (not stop) do
  begin
    if not (UPCASE(input[i]) in ['A'..'Z', ' ']) then
    begin
      EsCadena := false;
      stop := true;
    end;
    inc(i);
  end;
end;

 function EsNumero(input: string): boolean;
 var
   i: integer;
 begin
   // Verificar si todos los caracteres son dígitos
   for i := 1 to Length(input) do
   begin
     if not (input[i] in ['0'..'9']) then
     begin
       EsNumero := false;
       Exit;
     end;
   end;
   EsNumero := true;
 end;


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


end.