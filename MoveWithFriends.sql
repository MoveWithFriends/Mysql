DROP TABLE IF EXISTS `customer`;
DROP TABLE IF EXISTS `interest`;
DROP TABLE IF EXISTS `timeslots`;

CREATE TABLE `Customer`	(
  CustomerID    INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  FirstName     VARCHAR(255) NOT NULL,
  LastName      VARCHAR(255) NOT NULL,
  Sex			VARCHAR(6) NOT NULL,
  BirthDate     DATE,
  PreferredSex  VARCHAR(10) NOT NULL)
;


CREATE TABLE `Interest`	(
  CustomerID  INT(10),
  Interest    VARCHAR(10),

  CONSTRAINT
    PRIMARY KEY InterestPK (`CustomerID`, `Interest`),

  CONSTRAINT
    FOREIGN KEY InterestFK (`CustomerID`)
    REFERENCES Customer (`CustomerID`))
;

CREATE TABLE `Timeslot`	(
  CustomerID  INT(10),
  Timeslot   VARCHAR(20),

  CONSTRAINT
    PRIMARY KEY TimeslotPK (`CustomerID`, `Timeslot`),

  CONSTRAINT
    FOREIGN KEY TimeslotFK (`CustomerID`)
    REFERENCES Customer (`CustomerID`))
;
