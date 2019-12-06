/PROG  BACKGRND
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Background Progr";
PROG_SIZE	= 502;
CREATE		= DATE 06-09-07  TIME 07:37:28;
MODIFIED	= DATE 18-01-26  TIME 07:55:00;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 978;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 1,
      ABORT_REQUEST	= 7,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  !-------------------------------- ;
   2:  !Background Program ;
   3:  !-------------------------------- ;
   4:  LBL[1] ;
   5:   ;
   6:  WAIT    .25(sec) ;
   7:  IF SO[7:ON :TP enabled]=ON,JMP LBL[10] ;
   8:  $HSCDMNGRP[1].$COLL_MODE=1 ;
   9:  LBL[10] ;
  10:   ;
  11:  LBL[60] ;
  12:  IF R[200]<>51501,JMP LBL[1] ;
  13:  !Put 200 in Reg 99 to stop progra ;
  14:  !-------------------------------- ;
  15:  R[200]=0    ;
/POS
/END
