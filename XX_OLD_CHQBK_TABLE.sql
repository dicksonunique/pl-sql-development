te table XX_OLD_CHQBK_TABLE

(

  COD_ACCT_NO         VARCHAR2(20) not null,

  CHQ_SRLNO           NUMBER,

  REF_CHQ_START_NO    VARCHAR2(20) not null,

  REF_CHQ_END_NO      VARCHAR2(20) not null,

  CTR_LEAVES          NUMBER,

  CTR_UPDATE_SRLNO    VARCHAR2(50),

  CHQ_PAID_STATUS     VARCHAR2(100),

  CTR_UNPAID_CHEQUES  NUMBER          

);
