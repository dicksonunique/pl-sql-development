REATE OR REPLACE FUNCTION calculate_factorial(y IN number) RETURN number

is

--y is the number to look for its factorial

--n_f is the factorial result

n_factorial number;



BEGIN

    IF y=0 THEN

    n_factorial:=1;

    ELSE

    n_factorial:=y*calculate_factorial(y-1);

    

    END IF;

   

    RETURN n_factorial;

END;



-- Implementing the factorial function

-- DECLARE

-- facts number;

-- enter_number number;

-- BEGIN

--     enter_number:=5;

--     facts:=calculate_factorial(enter_number);

--     DBMS_OUTPUT.PUT_LINE(enter_number||'! = '||facts);

-- END


