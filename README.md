# pl-sql-development
Repository for Pl/sql code
Question 1:
Consider the following expression
15х -
7x -
y(x) =
Prerequisite:
Use the Scripts in xxt.sql, transf.sql and data.sql to create the corresponding Schema objects.
Task:
Consider the values in table xxt.
Using column id as x, write an anonymous block that would perform the following translation:
For every row in xxt, insert the following into table transf
id
/y(xxt.id)
id2
xxt.id
coll
col3
col4
concatenate (row "" of , xxt.col1) where i is the iteration value of that distinct value of xxt.col1 e.g. 'row 1 of Center' means this is the first occurrence of value Center in the loop while 'row 7 of center' means that is the 7th occurrence. *Please note that the iteration count is different for each distinct value.
The value today's date + xxt.id days e.g. if xxt.id =4, u add 4 days to system date
The value today's date - xxt.id days e.g. if xxt.id =4, u subtract 4 days to system date

Question 2:
you are involved in a data conversion project and one of your tasks is the migration of Payment Check books from the Legacy System to the New System.
Find Definition of both transactional tables
XX OLD CHQBK TABLE
Column Name
[ COD ACCT_NO [CHQ SRLNO
REF CHQ START NO
REF_CHQ_END_NO
CTR_LEAVES
CTR UPDATE SRLNO
CHQ PAID _STATUS
CTR UNPAID CHEQUES
Data Type
VARCHAR2(20) not null
NUMBER
VARCHAR2(20) not null
VARCHAR2(20) not null
NUMBER
VARCHAR2(50)
VARCHAR2(100)
NUMBER
Comments
Account Number
Start of check number in checkbook
End of check number in checkbook
Number of leaves in checkbook
Check Status. U=Unpaid, P= Paid Number of Unpaid checks
XX NEW CHECKS TABLE
Column Name
ORG CODE
ACCOUNT NO
CHECK_BOOK NO
CHECK NO
STATUS
| AMOUNT
BENEFICIARY
PRESENTATION DATE
VALUE DATE
REMARKS
CHECK DIGIT
REJECT CODE
Data Type
VARCHAR2(3) not null
VARCHAR2(20) not null
NUMBER
NUMBER not null
CHAR(1) default 'N'
NUMBER(22,3)
VARCHAR2(105)
DATE
DATE
VARCHAR2(255)
VARCHAR2(1) default '0'
VARCHAR2(2)
Comments
First three characters of account number
Account Number
Check Book Number
Check Number per leaf
Check Status. N=Not Used, Y=Used
The Data of both tables will need to be correctly mapped and a PL/SQL Data conversion and Transformation script should be written to move only unpaid checks from the Legacy table to the new table.
Question 3:
Write a recursive function to calculate factorial (given that n!=n*(n-1)*(n-2)*.. *1)
Question 4:
Write a PL/SQL function that would reverse a string passed to it such that it will return the even placed strings in reverse before the odd, i.e., if you pass "ABCDEF" to it, it should return "FBECA"
