REATE OR REPLACE FUNCTION reverse_string (v_string in varchar2) RETURN varchar2

IS



    len  NUMBER;

    str1 VARCHAR(20);

    str2 VARCHAR(20);

    str3 VARCHAR(20);

BEGIN

    -- Here we find the length of string

    len := Length(v_string);

  

    

    FOR i IN REVERSE 1.. len LOOP

      IF MOD(I,2) =0 THEN

        str1 := str1

                || Substr(v_string, i, 1);

        END IF;

        IF MOD(I,2) !=0 THEN

        str2 := str2

                || Substr(v_string, i, 1);

        END IF;

    END LOOP;

    str3:=(str1||str2);

    dbms_output.Put_line('Reverse of string is '

                         || str3);

  

  return str3;

    

END;



--Implementing the function for reverse

Declare

s_r varchar2(1500 byte);

Begin

s_r:=reverse_string('ABCDEF');

End
