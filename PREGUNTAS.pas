UNIT PREGUNTAS;

{$CODEPAGE UTF8}

INTERFACE

USES
  CRT, ARCHIVO;

PROCEDURE PREG_RESP (VAR ARCH:T_ARCHIVO);
PROCEDURE INICIALIZAR_PREGUNTAS (VAR REG:T_DATO2);

IMPLEMENTATION

PROCEDURE INICIALIZAR_PREGUNTAS (VAR REG:T_DATO2);
BEGIN
  REG.PREGUNTA := '';
  REG.RESPUESTA := '';
END;

PROCEDURE PREG_RESP (VAR ARCH:T_ARCHIVO);
CONST
  RESPUESTAS: ARRAY[0..4] OF AnsiString  = (
    'Nuestra facultad cuenta con los siguientes deportes: Futbol, Voley, Basquet, Natacion, Padel, Hockey, Rugby, Ajedrez. Torneos internos e interfacultativos. Si te interesa obtener mas informacion sobre el tema, acercate a SAE.',
    'La inscripcion se realiza a traves del SIU Guarani, donde encontraras un apartado de inscripcion a cursadas. Te recuerdo que responder las encuestas tiene una importancia crucial para este proceso.',
    'Los mails mas importantes son: SAE@FRCU.UTN.EDU.AR - DPTOALUM@FRCU.UTN.EDU.AR - ALUMNOS@FRCU.UTN.EDU.AR - ASESORIAPEDAGOGICA@FRCU.UTN.EDU.AR - CURSADA@FRCU.UTN.EDU.AR - EXAMENES@FRCU.UTN.EDU.AR',
    'Hay muchisimas aulas en nuestra facultad. Pero las mas destacables son SAE, CEICU, ALUMNOS, ENFERMERIA, SECRETARIA. ¿Sabias que existe una opcion en la pagina de la UTN FRCU donde puedes ver los horarios de todas materias?',
    'La facultad cuenta con becas de servicio y/o investigacion. Tambien puedes acceder a becas tales como la Manuel Belgrano o Progresar. Para mas informacion, acercate al SAE, ellos te sabran explicar a detalle los requisitos por si gustas aplicar.'
  );
VAR
  REG: T_DATO2;
  I: INTEGER;
BEGIN
  ABRIRBOT(ARCH);

  FOR I := 0 TO HIGH(RESPUESTAS) DO
  BEGIN
    REG.RESPUESTA := RESPUESTAS[I];
    GUARDA_REGISTRO(ARCH, I, REG);
  END;

  CLOSE(ARCH);
END;

END.