/PROG  BAD_PNUM1	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Invalid Part #";
PROG_SIZE	= 449;
CREATE		= DATE 19-01-22  TIME 13:04:24;
MODIFIED	= DATE 19-01-22  TIME 13:04:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 785;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  !------------------------------- ;
   2:  !Sets Invalid Part Number ;
   3:  !------------------------------- ;
   4:   ;
   5:  F[1000:ON ]=(ON) ;
   6:   ;
   7:  !Invalid Part Number ;
   8:  !------------------------------- ;
   9:  CALL UALRM_SET(3,'Invalid Part Number',6) ;
  10:  UALM[3] ;
  11:   ;
/POS
/END
