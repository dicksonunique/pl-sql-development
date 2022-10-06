te table XX_NEW_CHECKS_TABLE

(

  ORG_CODE          VARCHAR2(3) not null,

  ACCOUNT_NO        VARCHAR2(20) not null,

  CHECK_BOOK_NO     NUMBER,

  CHECK_NO          NUMBER not null,

  STATUS            CHAR(1) default 'N',

  AMOUNT            NUMBER(22,3),

  BENEFICIARY       VARCHAR2(105),

  PRESENTATION_DATE DATE,

  VALUE_DATE        DATE,

  REMARKS           VARCHAR2(255),

  CHECK_DIGIT       VARCHAR2(1) default '0',

  REJECT_CODE       VARCHAR2(2)

);
