-- DROP TABLE

DROP TABLE CUSTOMER;
DROP TABLE BANKER_INFORMATION;
DROP TABLE CREDIT_CARD;
DROP TABLE LOAN;
DROP TABLE ACCOUNT;
DROP TABLE BRANCH;
DROP TABLE BANKER;

-- CREATE TABLE


CREATE TABLE CUSTOMER(CUSTOMER_ID INT NOT NULL, 
CUSTOMER_NAME VARCHAR(100),
CUSTOMER_STREET VARCHAR(100),
CUSTOMER_CITY VARCHAR(100));

ALTER TABLE CUSTOMER ADD PRIMARY KEY(CUSTOMER_ID);

CREATE TABLE BANKER_INFORMATION(BANKER_ID INT NOT NULL,
BANKER_NAME VARCHAR(100), 
BANKER_EMAIL VARCHAR(100), 
PRIMARY KEY(BANKER_ID));



CREATE TABLE BANKER(BANKER_ID INT NOT NULL,
CUSTOMER_ID INT NOT NULL,
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER ON DELETE CASCADE,
FOREIGN KEY(BANKER_ID) REFERENCES BANKER_INFORMATION ON DELETE CASCADE);



CREATE TABLE CREDIT_CARD(CARD_NUMBER INT NOT NULL,
CARD_LIMIT INT,
EXPIRE_DATE VARCHAR(100),
CUSTOMER_ID INT NOT NULL,
PRIMARY KEY(CARD_NUMBER),
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER ON DELETE CASCADE );



CREATE TABLE BRANCH(BRANCH_NAME VARCHAR(100) NOT NULL,
BRANCH_LOCATION VARCHAR(100),
PRIMARY KEY(BRANCH_NAME));



CREATE TABLE LOAN(LOAN_NUMBER INT NOT NULL,
AMOUNT INT,
CUSTOMER_ID INT NOT NULL,
BRANCH_NAME VARCHAR(100) NOT NULL,
PRIMARY KEY(LOAN_NUMBER),
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER ON DELETE CASCADE,
FOREIGN KEY(BRANCH_NAME) REFERENCES BRANCH ON DELETE CASCADE);




CREATE TABLE ACCOUNT(ACCOUNT_NUMBER INT NOT NULL,
BALANCE INT,
CATEGORY VARCHAR(100),
CUSTOMER_ID INT NOT NULL,
PRIMARY KEY(ACCOUNT_NUMBER),
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER ON DELETE CASCADE);


-- TILL NOW EVERYTHING IS PERFECT




-- INSERT INTO CUSTOMER
INSERT INTO CUSTOMER(CUSTOMER_ID, CUSTOMER_NAME,CUSTOMER_STREET,CUSTOMER_CITY) VALUES(500, 'PIAL', '500A','DINAJPUR');
INSERT INTO CUSTOMER(CUSTOMER_ID, CUSTOMER_NAME,CUSTOMER_STREET,CUSTOMER_CITY) VALUES(501, 'NAJIB', '501A','RANGPUR');
INSERT INTO CUSTOMER(CUSTOMER_ID, CUSTOMER_NAME,CUSTOMER_STREET,CUSTOMER_CITY) VALUES(502, 'RONY', '502A','DINAJPUR');
INSERT INTO CUSTOMER(CUSTOMER_ID, CUSTOMER_NAME,CUSTOMER_STREET,CUSTOMER_CITY) VALUES(503, 'SADMAN', '503A','RANGPUR');
INSERT INTO CUSTOMER(CUSTOMER_ID, CUSTOMER_NAME,CUSTOMER_STREET,CUSTOMER_CITY) VALUES(504, 'RATUL', '504A','CHANDPUR');
INSERT INTO CUSTOMER(CUSTOMER_ID, CUSTOMER_NAME,CUSTOMER_STREET,CUSTOMER_CITY) VALUES(505, 'SOURAV', '505A','SAVAR');



-- INSERT INTO BANKER_INFORMATION
INSERT INTO BANKER_INFORMATION(BANKER_ID, BANKER_NAME, BANKER_EMAIL) VALUES(100, 'SOURAV', 'SOURAV@GMAIL.COM');
INSERT INTO BANKER_INFORMATION(BANKER_ID, BANKER_NAME, BANKER_EMAIL) VALUES(101, 'MAHIM', 'MAHIM@GMAIL.COM');
INSERT INTO BANKER_INFORMATION(BANKER_ID, BANKER_NAME, BANKER_EMAIL) VALUES(102, 'ZAFRUL', 'ZAFRUL@GMAIL.COM');
INSERT INTO BANKER_INFORMATION(BANKER_ID, BANKER_NAME, BANKER_EMAIL) VALUES(103, 'KOWSHIK', 'KOWSHIK@GMAIL.COM');
INSERT INTO BANKER_INFORMATION(BANKER_ID, BANKER_NAME, BANKER_EMAIL) VALUES(104, 'MAJHAR', 'MAJHAR@GMAIL.COM');



-- INSERT INTO BANKER
INSERT INTO BANKER(BANKER_ID, CUSTOMER_ID) VALUES(100 ,500);
INSERT INTO BANKER(BANKER_ID, CUSTOMER_ID) VALUES(100 ,501);
INSERT INTO BANKER(BANKER_ID, CUSTOMER_ID) VALUES(101 ,502);
INSERT INTO BANKER(BANKER_ID, CUSTOMER_ID) VALUES(102 ,502);
INSERT INTO BANKER(BANKER_ID, CUSTOMER_ID) VALUES(103 ,503);
INSERT INTO BANKER(BANKER_ID, CUSTOMER_ID) VALUES(104 ,504);
INSERT INTO BANKER(BANKER_ID, CUSTOMER_ID) VALUES(104 ,505);




-- INSERT INTO CREDIT_CARD
INSERT INTO CREDIT_CARD(CARD_NUMBER, CARD_LIMIT, EXPIRE_DATE, CUSTOMER_ID) VALUES(1001, 500000, '2022-12-24', 500);
INSERT INTO CREDIT_CARD(CARD_NUMBER, CARD_LIMIT, EXPIRE_DATE, CUSTOMER_ID) VALUES(1002, 700000, '2022-10-24', 501);
INSERT INTO CREDIT_CARD(CARD_NUMBER, CARD_LIMIT, EXPIRE_DATE, CUSTOMER_ID) VALUES(1003, 800000, '2022-11-24', 502);
INSERT INTO CREDIT_CARD(CARD_NUMBER, CARD_LIMIT, EXPIRE_DATE, CUSTOMER_ID) VALUES(1004, 900000, '2022-08-24', 503);
INSERT INTO CREDIT_CARD(CARD_NUMBER, CARD_LIMIT, EXPIRE_DATE, CUSTOMER_ID) VALUES(1005, 600000, '2022-06-24', 504);
INSERT INTO CREDIT_CARD(CARD_NUMBER, CARD_LIMIT, EXPIRE_DATE, CUSTOMER_ID) VALUES(1006, 900000, '2022-05-24', 504);
INSERT INTO CREDIT_CARD(CARD_NUMBER, CARD_LIMIT, EXPIRE_DATE, CUSTOMER_ID) VALUES(1007, 500000, '2022-05-24', 503);
INSERT INTO CREDIT_CARD(CARD_NUMBER, CARD_LIMIT, EXPIRE_DATE, CUSTOMER_ID) VALUES(1008, 200000, '2022-05-24', 502);



-- INSERT INTO ACCOUNT
INSERT INTO ACCOUNT(ACCOUNT_NUMBER, BALANCE, CATEGORY, CUSTOMER_ID) VALUES(10001, 100000, 'GENERAL', 500);
INSERT INTO ACCOUNT(ACCOUNT_NUMBER, BALANCE, CATEGORY, CUSTOMER_ID) VALUES(10002, 200000, 'PREMIUM', 501);
INSERT INTO ACCOUNT(ACCOUNT_NUMBER, BALANCE, CATEGORY, CUSTOMER_ID) VALUES(10003, 300000, 'STANDARD', 502);
INSERT INTO ACCOUNT(ACCOUNT_NUMBER, BALANCE, CATEGORY, CUSTOMER_ID) VALUES(10004, 400000, 'PREMIUM', 503);
INSERT INTO ACCOUNT(ACCOUNT_NUMBER, BALANCE, CATEGORY, CUSTOMER_ID) VALUES(10005, 500000, 'GOLD', 504);
INSERT INTO ACCOUNT(ACCOUNT_NUMBER, BALANCE, CATEGORY, CUSTOMER_ID) VALUES(10006, 700000, 'PREMIUM', 504);




-- INSERT INTO BRANCH
INSERT INTO BRANCH(BRANCH_NAME, BRANCH_LOCATION) VALUES('SONALI', 'SAVAR');
INSERT INTO BRANCH(BRANCH_NAME, BRANCH_LOCATION) VALUES('RUPALI', 'DHAKA');
INSERT INTO BRANCH(BRANCH_NAME, BRANCH_LOCATION) VALUES('JANATA', 'KHULNA');
INSERT INTO BRANCH(BRANCH_NAME, BRANCH_LOCATION) VALUES('AGRANI', 'JESSORE');
INSERT INTO BRANCH(BRANCH_NAME, BRANCH_LOCATION) VALUES('ISLAMI', 'FARIDPUR');
INSERT INTO BRANCH(BRANCH_NAME, BRANCH_LOCATION) VALUES('BD BANK', 'DHAKA');



-- INSERT INTO LOAN
INSERT INTO LOAN(LOAN_NUMBER, AMOUNT, CUSTOMER_ID, BRANCH_NAME)  VALUES(5001, 100000, 500, 'SONALI');
INSERT INTO LOAN(LOAN_NUMBER, AMOUNT, CUSTOMER_ID, BRANCH_NAME)  VALUES(5002, 200000, 501, 'RUPALI');
INSERT INTO LOAN(LOAN_NUMBER, AMOUNT, CUSTOMER_ID, BRANCH_NAME)  VALUES(5003, 300000, 502, 'JANATA');
INSERT INTO LOAN(LOAN_NUMBER, AMOUNT, CUSTOMER_ID, BRANCH_NAME)  VALUES(5004, 400000, 503, 'AGRANI');
INSERT INTO LOAN(LOAN_NUMBER, AMOUNT, CUSTOMER_ID, BRANCH_NAME)  VALUES(5005, 500000, 504, 'ISLAMI');
INSERT INTO LOAN(LOAN_NUMBER, AMOUNT, CUSTOMER_ID, BRANCH_NAME)  VALUES(5006, 600000, 504, 'ISLAMI');



-- SHOW ALL TABLES
SELECT * FROM CUSTOMER;
SELECT * FROM BANKER_INFORMATION;
SELECT * FROM BANKER;
SELECT * FROM CREDIT_CARD;
SELECT * FROM LOAN;
SELECT * FROM BRANCH;
SELECT * FROM ACCOUNT;




-- ALTER COLUMN NAME
ALTER TABLE LOAN RENAME COLUMN AMOUNT TO LOAN_AMOUNT;



-- SELECT METHOD
SELECT ACCOUNT_NUMBER AS ACC_NO FROM ACCOUNT;


-- SELECT DISTINCT METHOD
SELECT DISTINCT (CUSTOMER_CITY) FROM CUSTOMER;


-- BETWEEN METHOD
-- BETWEEN MANE OI 2TA AMOUNT ER MDDHE AND SOHO JADER ACHE TADER SHOW KORBE
SELECT CUSTOMER_ID FROM LOAN WHERE LOAN_AMOUNT BETWEEN 200000 AND 500000;


-- BETWEEN METHOD
-- IN MANE OI 2TA AMOUNT JAR ACHE TADER SHOW KORBE
SELECT CUSTOMER_ID FROM LOAN WHERE LOAN_AMOUNT IN (200000, 500000);


-- LIKE METHOD
SELECT CUSTOMER_NAME FROM CUSTOMER WHERE CUSTOMER_CITY LIKE '%DINAJPUR%';


-- ORDER BY ASCENDING ORDER BY DEFAULT
SELECT * FROM CUSTOMER ORDER BY CUSTOMER_CITY;
-- ORDER BY DESCENDING ORDER
SELECT * FROM CUSTOMER ORDER BY CUSTOMER_CITY DESC;

-- EVERYTHING IS PERFECT TILL NOW

-- AGGREGATE FUNCTION
SELECT SUM(LOAN_AMOUNT) AS TOTAL_AMOUNT FROM LOAN;

SELECT AVG(LOAN_AMOUNT) AS TOTAL_AMOUNT FROM LOAN;

-- GROUP BY AND HAVING

SELECT COUNT(LOAN_AMOUNT), BRANCH_NAME FROM LOAN GROUP BY(BRANCH_NAME);

SELECT CUSTOMER_ID, COUNT(CARD_NUMBER) FROM CREDIT_CARD GROUP BY(CUSTOMER_ID) HAVING COUNT(CARD_LIMIT) > 1;


-- SUBQUERY(WHERE ERPR ATTIRIBUTE AR SELECT ERPR ATTIRIBUTE SAME HBE)
SELECT CARD_NUMBER, CUSTOMER_ID FROM CREDIT_CARD WHERE CARD_NUMBER IN (SELECT CARD_NUMBER FROM CREDIT_CARD WHERE CARD_LIMIT > 200000);

-- SUBQUERY OBJECT
SELECT C.CARD_NUMBER , C.CUSTOMER_ID FROM CREDIT_CARD C WHERE C.CARD_NUMBER IN (SELECT O.CARD_NUMBER FROM CREDIT_CARD O WHERE O.CARD_LIMIT > 200000);



-- UNION OPERATOR
SELECT BRANCH_NAME FROM BRANCH UNION SELECT BRANCH_NAME FROM LOAN; 
SELECT CUSTOMER_ID FROM CUSTOMER UNION ALL SELECT CUSTOMER_ID FROM CREDIT_CARD;


-- INTERSECT OPERATOR
SELECT CUSTOMER_ID FROM CUSTOMER INTERSECT SELECT CUSTOMER_ID FROM CREDIT_CARD;

-- MINUS OPERATOR
SELECT CUSTOMER_ID FROM CUSTOMER MINUS SELECT CUSTOMER_ID FROM CREDIT_CARD;

-- EVERYTHING IS WORKING TILL NOW

-- JOIN OPERATOR

SELECT A.ACCOUNT_NUMBER, A.BALANCE, C.CUSTOMER_NAME FROM ACCOUNT A JOIN CUSTOMER C ON A.CUSTOMER_ID = C.CUSTOMER_ID;

-- USING
SELECT A.ACCOUNT_NUMBER, A.BALANCE, C.CUSTOMER_NAME FROM ACCOUNT A JOIN CUSTOMER C USING(CUSTOMER_ID);

-- NATURAL JOIN
SELECT A.ACCOUNT_NUMBER, A.BALANCE, C.CUSTOMER_NAME FROM ACCOUNT A NATURAL JOIN CUSTOMER C;

-- OUTER JOIN

-- LEFT OUTER JOIN(STRONG LEFT TABLE)
SELECT  C.CUSTOMER_NAME, A.ACCOUNT_NUMBER, A.BALANCE FROM CUSTOMER C LEFT OUTER JOIN ACCOUNT A ON A.CUSTOMER_ID = C.CUSTOMER_ID;


-- RIGHT OUTER JOIN
SELECT  B.BRANCH_NAME ,L.LOAN_NUMBER, L.CUSTOMER_ID FROM LOAN L RIGHT OUTER JOIN BRANCH B ON B.BRANCH_NAME = L.BRANCH_NAME;


-- FULL OUTER JOIN
SELECT  B.BRANCH_NAME ,L.LOAN_NUMBER, L.CUSTOMER_ID FROM LOAN L FULL OUTER JOIN BRANCH B ON B.BRANCH_NAME = L.BRANCH_NAME;


-- PLSQL
SET SERVEROUTPUT ON
DECLARE
   MAX_LOAN_AMOUNT  LOAN.LOAN_AMOUNT%type;
BEGIN
   SELECT MAX(LOAN_AMOUNT)  INTO MAX_LOAN_AMOUNT  
   FROM LOAN;
   DBMS_OUTPUT.PUT_LINE('THE MAXIMUM LOAN AMOUNT IS : ' || MAX_LOAN_AMOUNT);
 END;
/

SET SERVEROUTPUT ON
DECLARE
   MAX_BALANCE  ACCOUNT.BALANCE%type;
BEGIN
   SELECT MIN(A.BALANCE) INTO MAX_BALANCE FROM ACCOUNT A JOIN CUSTOMER C USING(CUSTOMER_ID);
   DBMS_OUTPUT.PUT_LINE('THE MAXIMUM BALANCE IS  : ' || MAX_BALANCE);
 END;
/


