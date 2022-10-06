LARE

chk_bk_no  XX_NEW_CHECKS_TABLE.CHECK_BOOK_NO%TYPE;

cod_acc    XX_NEW_CHECKS_TABLE.ORG_CODE%TYPE;

 P_status  number;

 len       number;

 CHQ_START_NO   number;

 check_leave_no number;





BEGIN

    FOR i IN (SELECT * FROM XX_OLD_CHQBK_TABLE) LOOP

        cod_acc:=SUBSTR(i.COD_ACCT_NO,1,3);

        chk_bk_no:=SUBSTR(i.REF_CHQ_START_NO,-3,3);

        len:=LENGTH(I.CHQ_PAID_STATUS);

        -- dbms_output.put_line(cod_acc ||' '|| chk_bk_no||' '||LEN);

        FOR rec IN 1..len LOOP

            IF rec=1 THEN

                check_leave_no:=chk_bk_no;

            ELSE

                check_leave_no:=check_leave_no+1;

            END IF;

            IF UPPER(SUBSTR(i.CHQ_PAID_STATUS,REC,1))='U' THEN

                -- dbms_output.put_line(check_leave_no);

            INSERT INTO XX_NEW_CHECKS_TABLE(ORG_CODE,	

                                            ACCOUNT_NO,	

                                            CHECK_BOOK_NO,	

                                            CHECK_NO,	

                                            STATUS,	

                                            AMOUNT,	

                                            BENEFICIARY,	

                                            PRESENTATION_DATE,	

                                            VALUE_DATE,	

                                            REMARKS,	

                                            CHECK_DIGIT,

                                            REJECT_CODE) 

             VALUES(cod_acc,i.COD_ACCT_NO,chk_bk_no,

                    check_leave_no,'N','0','','','',

                    'DDUMMY','0','');

             

    

           END IF;



        END LOOP;



    END LOOP;





END;


