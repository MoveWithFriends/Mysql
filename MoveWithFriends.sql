DROP TABLE IF EXISTS `timeslot`, `Interest`, `customer`
;

CREATE TABLE `users` (
  CustomerID      INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  FirstName       VARCHAR(255) NOT NULL,
  LastName        VARCHAR(255) NOT NULL,
  Email           VARCHAR(255) NOT NULL,
  UserName        VARCHAR(255) NOT NULL,
  Phonenumber     VARCHAR(20) NOT NULL,
  Gender			    VARCHAR(6) NOT NULL,
  BirthDate       DATE NOT NULL,
  password        VARCHAR(255) NOT NULL,       
  Preferredgender VARCHAR(10) NOT NULL)
  
;


CREATE TABLE `Interest` (
  CustomerIDinterest  INT(10),
  Boksen      BOOLEAN,
  Fitness     BOOLEAN,
  Hardlopen   BOOLEAN,
  Tennis      BOOLEAN,
  Squash      BOOLEAN,
  Wandelen    BOOLEAN,
  Wielrennen  BOOLEAN,
  Zwemmen     BOOLEAN,
  
  CONSTRAINT
    PRIMARY KEY InterestPK (CustomerIDinterest, Boksen),

  CONSTRAINT
    FOREIGN KEY InterestFK (CustomerIDinterest)
    REFERENCES Customer (CustomerID))
;

CREATE TABLE `Timeslot`  (
  CustomerIDtimeslot   INT(10),
  Timeslot1     BOOLEAN,
  Timeslot2     BOOLEAN,
  Timeslot3     BOOLEAN,
  Timeslot4     BOOLEAN,
  Timeslot5     BOOLEAN,
  Timeslot6     BOOLEAN,
  Timeslot7     BOOLEAN,
  Timeslot8     BOOLEAN,
  Timeslot9     BOOLEAN,
  Timeslot10    BOOLEAN,
  Timeslot11    BOOLEAN,
  Timeslot12    BOOLEAN,
  Timeslot13    BOOLEAN,
  Timeslot14    BOOLEAN,
  Timeslot15    BOOLEAN,
  Timeslot16    BOOLEAN,
  Timeslot17    BOOLEAN,
  Timeslot18    BOOLEAN,
  Timeslot19    BOOLEAN,
  Timeslot20    BOOLEAN,
  Timeslot21    BOOLEAN,
  
CONSTRAINT
    PRIMARY KEY TimeslotPK (CustomerIDtimeslot, Timeslot1),

  CONSTRAINT
    FOREIGN KEY TimeslotFK (CustomerIDtimeslot)
    REFERENCES Customer (CustomerID))
;
                                       
                                                  
                         
----------------------------------------------------------------------------------------------------------------------------------

                         
DROP TABLE IF EXISTS `timeslot`, `Interest`, `customer`
;

CREATE TABLE `Customer` (
  CustomerID      INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  FirstName       VARCHAR(255) NOT NULL,
  LastName        VARCHAR(255) NOT NULL,
  Phonenumber     VARCHAR(20) NOT NULL,
  Gender			    VARCHAR(6) NOT NULL,
  BirthDate       DATE NOT NULL,
  Preferredgender VARCHAR(10) NOT NULL)
;


CREATE TABLE `Interest` (
  CustomerID  INT(10),
  Boksen      BOOLEAN,
  
  CONSTRAINT
    PRIMARY KEY InterestPK (CustomerID, Boksen),

  CONSTRAINT
    FOREIGN KEY InterestFK (CustomerID)
    REFERENCES Customer (CustomerID))
;

CREATE TABLE `Timeslot`  (
  CustomerID    INT(10),
  Timeslot      BOOLEAN,

  
CONSTRAINT
    PRIMARY KEY TimeslotPK (CustomerID, Timeslot),

  CONSTRAINT
    FOREIGN KEY TimeslotFK (CustomerID)
    REFERENCES Customer (CustomerID))
;

