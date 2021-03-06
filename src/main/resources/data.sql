
-- dummy data for rms.Employee table
INSERT INTO EMPLOYEE (
    EMPLOYEE_ID, FIRST_NAME, LAST_NAME, GENDER, DOB, NATIONALITY,
    MARITAL_STATUS, PHONE, SUB_DIVISION, STATUS, HIRE_DATE,
    GRADE, DIVISION, EMAIL, OFFICE, ACTIVE )
VALUES (
    'dummy-empl-01', 'Kholishul', 'Aziz', 'M', DATE '1991-04-01', 'IND',
    'M', '085730323302', 'Java Bootcamp', 'P', DATE '2013-11-18',
    'PG', 'JWT', 'Kholishul.aziz@mitrais.com', 'JOG',
    TRUE);

INSERT INTO EMPLOYEE (
    EMPLOYEE_ID, FIRST_NAME, LAST_NAME, GENDER, DOB, NATIONALITY,
    MARITAL_STATUS, PHONE, SUB_DIVISION, STATUS, HIRE_DATE,
    GRADE, DIVISION, EMAIL, OFFICE, ACTIVE )
VALUES (
    'dummy-empl-02', 'Abizar Athaillah', 'Aziz', 'M', DATE '2017-01-21', 'IND',
    'S', '081234567890', 'React Bootcamp', 'N', DATE '2017-01-21',
    'JP', 'JWT', 'abizarathaillah.aziz@mitrais.com', 'DPS',
    FALSE);



-- dummy data for rms.History table
INSERT INTO HISTORY (
    HISTORY_ID, START_DATE, END_DATE, PROJECT_NAME, PROJECT_ROLE, JOB_DESCRIPTION, EMPLOYEE_ID )
VALUES (
    'dummy-hist-01', '2014-01-01', '2016-09-01', 'MMS', 'TEST', 'MMS Description',
    (SELECT EMPLOYEE_ID FROM EMPLOYEE WHERE EMPLOYEE_ID = 'dummy-empl-01'));
INSERT INTO HISTORY (
    HISTORY_ID, START_DATE, END_DATE, PROJECT_NAME, PROJECT_ROLE, JOB_DESCRIPTION, EMPLOYEE_ID )
VALUES (
    'dummy-hist-02', '2016-09-01', '2016-12-01', 'BTPN', 'DEV', 'BTPN Description',
    (SELECT EMPLOYEE_ID FROM EMPLOYEE WHERE EMPLOYEE_ID = 'dummy-empl-01'));
INSERT INTO HISTORY (
    HISTORY_ID, START_DATE, END_DATE, PROJECT_NAME, PROJECT_ROLE, JOB_DESCRIPTION, EMPLOYEE_ID )
VALUES (
    'dummy-hist-03', '2014-01-01', NULL , 'CDC', 'DEV', 'CDC Description',
    (SELECT EMPLOYEE_ID FROM EMPLOYEE WHERE EMPLOYEE_ID = 'dummy-empl-02'));
INSERT INTO HISTORY (
    HISTORY_ID, START_DATE, END_DATE, PROJECT_NAME, PROJECT_ROLE, JOB_DESCRIPTION, EMPLOYEE_ID )
VALUES (
    'dummy-hist-04', '2016-12-01', NULL , 'CDC', 'DEV', 'CDC Description',
    (SELECT EMPLOYEE_ID FROM EMPLOYEE WHERE EMPLOYEE_ID = 'dummy-empl-01'));



-- dummy data for rms.Lookup table
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-01', 'GRADE', 'JP', 'Junior Programmer');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-02', 'GRADE', 'PG', 'Programmer');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-03', 'GRADE', 'AP', 'Analyst Programmer');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-04', 'GRADE', 'AN', 'Analyst');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-05', 'GENDER', 'M', 'Male');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-06', 'GENDER', 'F', 'Female');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-07', 'NATION', 'IND', 'Indonesia');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-08', 'NATION', 'AUS', 'Australia');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-09', 'MARITAL', 'S', 'Single');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-10', 'MARITAL', 'M', 'Married');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-11', 'EMPSTAT', 'C', 'Contract');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-12', 'EMPSTAT', 'P', 'Permanent');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-13', 'EMPSTAT', 'N', 'Not Active');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-14', 'DIV', 'JWT', 'Java Web Technology');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-15', 'DIV', 'CDC', 'CDC');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-16', 'OFFICE', 'JOG', 'Yogyakarta');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-17', 'OFFICE', 'SUB', 'Surabaya');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-18', 'OFFICE', 'DPS', 'Denpasar');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-19', 'ROLE', 'DEV', 'Developer');
INSERT INTO LOOKUP(LOOKUP_ID, DATA_TYPE, DATA_CODE, DATA_DESC) VALUES('dummy-lkp-20', 'ROLE', 'TEST', 'Tester');