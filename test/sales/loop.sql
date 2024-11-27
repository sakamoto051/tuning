CREATE 
OR REPLACE PROCEDURE PROC_INSERT_VAR IS
CURSOR c_sales IS 
SELECT
    company
    , year
    , sale 
FROM
    Sales 
ORDER BY
    company
    , year; 

rec_sales c_sales % ROWTYPE; 

i_pre_sale INTEGER := 0; 

c_company CHAR (1) := '*'; 

c_var CHAR (1) := '*'; 

BEGIN OPEN c_sales; 

LOOP

fetch c_sales 
into rec_sales; 

exit when c_sales % notfound; 

IF (c_company = rec_sales.company) THEN
IF (i_pre_sale < rec_sales.sale) THEN c_var := '+'; 

ELSIF(i_pre_sale > rec_sales.sale) THEN c_var := '-'; 

ELSE c_var := '='; 

END IF; 

ELSE c_var := NULL; 

END IF; 

INSERT 
INTO Sales2(company, year, sale, var) 
VALUES ( 
    rec_sales.company
    , rec_sales.year
    , rec_sales.sale
    , c_var
); 

c_company := rec_sales.company; 

i_pre_sale := rec_sales.sale; 

END LOOP; 

CLOSE c_sales; 

commit; 

END;
