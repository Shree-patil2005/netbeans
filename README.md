# netbeans
This project is created on Apache Netbeans and using sql plus(for backend).
Using this link https://www.oracle.com/database/technologies/appdev/jdbc-downloads.html  download (ojdbc17.jar) file and import in your project library to connect with sqlplus.


This are sqlplus(Release 10.2.0.1.0) codes :-
CREATE TABLE signup (
    id NUMBER NOT NULL, 
    username VARCHAR2(50) UNIQUE NOT NULL, 
    email VARCHAR2(100) UNIQUE NOT NULL,
    password VARCHAR2(100) NOT NULL, 
    PRIMARY KEY (id)
);

create sequence user_seq
start with 1
increment by 1
nocache;

CREATE OR REPLACE TRIGGER user_trigger
BEFORE INSERT ON signup
FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        SELECT user_seq.NEXTVAL INTO :NEW.id FROM DUAL;
    END IF;
END;
/


CREATE TABLE PersonalInfo (
    id NUMBER PRIMARY KEY,
    fullName VARCHAR2(100) NOT NULL,
    age NUMBER NOT NULL,
    phone VARCHAR2(15) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL
);

CREATE SEQUENCE personalinfo_seq
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE OR REPLACE TRIGGER personalinfo_trigger
BEFORE INSERT ON PersonalInfo
FOR EACH ROW
BEGIN
    SELECT personalinfo_seq.NEXTVAL INTO :NEW.id FROM dual;
END;
/


CREATE TABLE Destination (
    id NUMBER PRIMARY KEY,
    destination VARCHAR2(50) NOT NULL,
    numberOfPeople NUMBER NOT NULL,
    flightClass VARCHAR2(20) NOT NULL,
    personalGuide VARCHAR2(10) NOT NULL
);

CREATE SEQUENCE destination_seq
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE OR REPLACE TRIGGER destination_trigger
BEFORE INSERT ON Destination
FOR EACH ROW
BEGIN
    SELECT destination_seq.NEXTVAL INTO :NEW.id FROM dual;
END;
/


CREATE TABLE JourneyInfo (
    id NUMBER PRIMARY KEY,
    amountExchange VARCHAR2(20) NOT NULL,
    luggageWeight VARCHAR2(10) NOT NULL,
    paymentMode VARCHAR2(20) NOT NULL,
    specialMessage VARCHAR2(50)
);

CREATE SEQUENCE journeyinfo_seq
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE OR REPLACE TRIGGER journeyinfo_trigger
BEFORE INSERT ON JourneyInfo
FOR EACH ROW
BEGIN
    SELECT journeyinfo_seq.NEXTVAL INTO :NEW.id FROM dual;
END;
/

CREATE TABLE Feedback (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(40) NOT NULL,
    email VARCHAR2(40) NOT NULL,
    contact VARCHAR2(15) NOT NULL,
    address VARCHAR2(50) NOT NULL,
    message VARCHAR2(50) NOT NULL
);

CREATE SEQUENCE feedback_seq
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE OR REPLACE TRIGGER feedback_trigger
BEFORE INSERT ON Feedback
FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        SELECT feedback_seq.NEXTVAL INTO :NEW.id FROM DUAL;
    END IF;
END;
/
