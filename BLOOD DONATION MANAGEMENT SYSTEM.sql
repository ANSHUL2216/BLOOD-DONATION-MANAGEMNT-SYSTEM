
CREATE TABLE EMPLOYEE(
    EMP_ID VARCHAR(20) PRIMARY KEY,
    SALARY INT NOT NULL,
    DESIGNATION VARCHAR(100)
);

INSERT INTO EMPLOYEE(EMP_ID, SALARY, DESIGNATION)
VALUES
('E-01',80000,'SENIOR DOCTOR'),
('E-02',48000,'SENIOR RESIDENT'),
('E-03',30000,'TECHNICIAN'),
('E-04',30000,'TECHNICIAN'),
('E-05',32000,'LABORATORY ASSISTANT'),
('E-06',23000,'ATTENDANT'),
('E-07',12000,'NURSING STAFF'),
('E-08',12000,'NURSING STAFF'),
('E-09',12000,'NURSING STAFF'),
('E-10',12000,'NURSING STAFF');

CREATE TABLE DONOR(
    DONOR_ID VARCHAR(100) PRIMARY KEY,
    BLOOD_TYPE VARCHAR(20),
    DONATION_DATE DATE
);

INSERT INTO DONOR(DONOR_ID, BLOOD_TYPE, DONATION_DATE)
VALUES
('D-01','O+','2024-02-01'),
('D-02','AB+','2024-04-06'),
('D-03','O-','2024-08-10'),
('D-04','B','2024-01-02'),
('D-05','A+','2024-03-04'),
('D-06','O+','2024-05-06'),
('D-07','AB-','2024-07-08'),
('D-08','O+','2024-09-08'),
('D-09','O+','2024-07-06'),
('D-10','B+','2024-05-04');

CREATE TABLE USER_ (
    USER_ID VARCHAR(50) PRIMARY KEY,
    NAME VARCHAR(100),
    EMAIL_ID VARCHAR(100),
    DOB DATE,
    AGE INT,
    CITY VARCHAR(100),
    PHONE_NO VARCHAR(50),
    EMP_ID VARCHAR(20),
    DONOR_ID VARCHAR(100),
    FOREIGN KEY (EMP_ID) REFERENCES EMPLOYEE(EMP_ID),
    FOREIGN KEY (DONOR_ID) REFERENCES DONOR(DONOR_ID)
);


INSERT INTO USER_(USER_ID, NAME, EMAIL_ID, DOB, AGE, CITY, PHONE_NO, EMP_ID, DONOR_ID)
VALUES
('E-01', 'ANAND', 'anu12@gmail.com', '2004-01-05', 20, 'NAGPUR', '9934578235', 'E-01', NULL),
('E-02', 'MAHI', 'mahu23@gmail.com', '2004-02-03', 20, 'NAGPUR', '8934568839', 'E-02', NULL),
('E-03', 'BHUSHAN', 'bhushu12@gmail.com', '2002-07-08', 22, 'NAGPUR', '5934578235', 'E-03', NULL),
('E-04', 'SIDDHI', 'sid12@gmail.com', '1997-01-08', 27, 'NAGPUR', '4934878235', 'E-04', NULL),
('E-05', 'RAGHU', 'raga56@gmail.com', '1999-05-05', 25, 'NAGPUR', '9934578235', 'E-05', NULL),
('E-06', 'RAJU', 'raj12@gmail.com', '1998-07-05', 26, 'NAGPUR', '4534578235', 'E-06', NULL),
('E-07', 'AARTI', 'aaru18@gmail.com', '2000-05-05', 24, 'NAGPUR', '7834578235', 'E-07', NULL),
('E-08', 'RITA', 'ritu45@gmail.com', '2001-07-05', 23, 'NAGPUR', '7534578235', 'E-08', NULL),
('E-09', 'SUHANI', 'suhani69@gmail.com', '2002-05-05', 22, 'NAGPUR', '5634578235', 'E-09', NULL),
('E-10', 'SAYEE', 'sayeee45@gmail.com', '2003-03-05', 21, 'NAGPUR', '1234578235', 'E-10', NULL),
('D-01', 'SUCHETI', 'suchi45@gmail.com', '2002-05-05', 22, 'NAGPUR', '3234578235', NULL, 'D-01'),
('D-02', 'RIYA', 'riya77@gmail.com', '1989-04-04', 35, 'NAGPUR', '5334578235', NULL, 'D-02'),
('D-03', 'ANANDI', 'anu999@gmail.com', '1979-09-08', 45, 'NAGPUR', '5534578235', NULL, 'D-03'),
('D-04', 'PRIYANSHU', 'prisha32@gmail.com', '1988-04-05', 36, 'NAGPUR', '6534578235', NULL, 'D-04'),
('D-05', 'ARYA', 'arya47@gmail.com', '2002-07-06', 22, 'NAGPUR', '7734578235', NULL, 'D-05'),
('D-06', 'VEDANT', 'vedu88@gmail.com', '2001-08-09', 23, 'NAGPUR', '1134578235', NULL, 'D-06'),
('D-07', 'HIMANSH', 'himu65@gmail.com', '1997-01-02', 27, 'NAGPUR', '4434578235', NULL, 'D-07'),
('D-08', 'RITIK', 'ritik43@gmail.com', '1995-03-04', 29, 'NAGPUR', '8834578235', NULL, 'D-08'),
('D-09', 'ARVIND', 'arvind32@gmail.com', '2004-05-06', 20, 'NAGPUR', '3634578235', NULL, 'D-09'),
('D-10', 'KHUSHI', 'khushi69@gmail.com', '2005-07-08', 19, 'NAGPUR', '8834578235', NULL, 'D-10');


CREATE TABLE BLOOD(
    BLOOD_BAG_NO VARCHAR(100) PRIMARY KEY,
    BLOOD_TYPE VARCHAR(100),
    PRICE INT NOT NULL,
    STOCK VARCHAR(20),
    DONOR_ID VARCHAR(100),
    FOREIGN KEY (DONOR_ID) REFERENCES DONOR(DONOR_ID)
);


INSERT INTO BLOOD(BLOOD_BAG_NO, BLOOD_TYPE, STOCK, PRICE, DONOR_ID)
VALUES
('202421','O+','AVAILABLE',3000,'D-01'),
('202422','O-','AVAILABLE',3500,'D-02'),
('202423','A+','NOT AVAILABLE',3000,'D-03'),
('202424','A-','AVAILABLE',4000,'D-04'),
('202425','B+','NOT AVAILABLE',4000,'D-05'),
('202426','B-','AVAILABLE',5000,'D-06'),
('202427','AB+','AVAILABLE',5000,'D-07'),
('202428','AB-','NOT AVAILABLE',8000,'D-08');
SELECT 
    U.NAME AS DONOR_NAME,
    D.BLOOD_TYPE
FROM 
    USER_ U
JOIN 
    DONOR D ON U.DONOR_ID = D.DONOR_ID;

UPDATE USER_
SET NAME='VEDANT'
WHERE USER_ID='D-06';
