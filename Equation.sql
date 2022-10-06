LARE

--formular Y= ((7*x)-(((5*x)-2)/6))/9

--x is id column of xxt

y transf.id%TYPE;

counter number:=0;

CURSOR cus is SELECT * FROM xxt x WHERE NOT EXISTS(SELECT *  FROM transf f where x.id=f.id2);

BEGIN



    FOR i IN cus LOOP

    FOR x IN (SELECT * FROM xxt WHERE COL1=i.COL1) LOOP

        counter:=counter+1;

        IF x.id=i.id THEN

        --obtaining the value of y

        y:=((7*i.id)-(((5*i.id)-2)/6))/9;

        



        --Testing the result on the terminal.

        -- dbms_output.put_line('Row '||counter||' of '||i.col1);

        -- dbms_output.put_line(sysdate+i.id|| ' '||sysdate-i.id);

        -- dbms_output.put_line(y);

        -- dbms_output.put_line(sysdate+i.id);

        -- dbms_output.put_line(sysdate-i.id);



       

        INSERT INTO transf(

            id     ,

            id2    ,

            col1   ,

            col3   ,

            col4   )

        VALUES(y,i.id,'Row '||counter||' of '||i.col1,sysdate+i.id,sysdate-i.id);

        END IF;

        END LOOP;

        counter:=0;

    END LOOP;
End;

/




















