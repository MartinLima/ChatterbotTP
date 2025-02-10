UNIT ARCHIVO;

{$CODEPAGE UTF8}

INTERFACE

USES
   CRT;

CONST
   RUTA = 'D:\MARTIN\ESCRITORIO\CHATTERBOT.DAT';

 TYPE
  T_DATO2 = RECORD
          PREGUNTA:STRING[200];
          RESPUESTA:STRING[255];
  END;

  T_ARCHIVO = FILE OF T_DATO2;

PROCEDURE ABRIRBOT(VAR ARCH:T_ARCHIVO);
PROCEDURE ABRIR(VAR ARCH:T_ARCHIVO);
PROCEDURE GUARDA_REGISTRO(VAR ARCH:T_ARCHIVO; POS:INTEGER; REG:T_DATO2);

IMPLEMENTATION


PROCEDURE ABRIRBOT(VAR ARCH:T_ARCHIVO);
BEGIN
     ASSIGN(ARCH,RUTA);
     RESET (ARCH);
END;

PROCEDURE ABRIR(VAR ARCH:T_ARCHIVO);
BEGIN
  ASSIGN(ARCH, RUTA);
  {$I-}
  RESET(ARCH);
  {$I+}
  IF IORESULT <> 0 THEN
      BEGIN
          REWRITE(ARCH);
          GOTOXY(2,1);
          //WRITELN('EL ARCHIVO SE CREO CON EXITO!!');
          DELAY(500);
      END
      ELSE
      BEGIN
       GOTOXY(2,1);
      //WRITELN('EL ARCHIVO YA ESTABA CREADO ANTERIORMENTE!!');
       DELAY(500);
      END;
      CLOSE(ARCH);
END;

PROCEDURE GUARDA_REGISTRO(VAR ARCH:T_ARCHIVO; POS:INTEGER; REG:T_DATO2);
BEGIN
SEEK(ARCH, POS);
WRITE(ARCH, REG);
END;

END.