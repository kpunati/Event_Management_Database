CREATE DATABASE IF NOT EXISTS Eventq;

USE Eventq;

DROP TABLE IF EXISTS SpeakerOrder;
DROP TABLE IF EXISTS AttendeeEventTicket;
DROP TABLE IF EXISTS Ticket;
DROP TABLE IF EXISTS Event; 
DROP TABLE IF EXISTS Venue;
DROP TABLE IF EXISTS Attendee;
DROP TABLE IF EXISTS Speaker;


CREATE TABLE Speaker (
    SpeakerID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Bio TEXT,
    ContactEmail VARCHAR(255),
    ContactPhoneNumber VARCHAR(20),
    City VARCHAR(100),
    State VARCHAR(100),
    Rate DECIMAL(6,2)
);

CREATE TABLE Attendee (
    AttendeeID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    City VARCHAR(100),
    State VARCHAR(100)
);

CREATE TABLE Venue (
    VenueID INT PRIMARY KEY,
    VenueName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Capacity INT,
    ContactPersonFirstName VARCHAR(100),
    ContactPersonLastName VARCHAR(100),
    ContactEmail VARCHAR(255),
    ContactPhoneNumber VARCHAR(20)
);

CREATE TABLE Event (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(255),
    EventDescription TEXT,
    EventDate DATE,
    EventTime TIME,
    VenueID INT,
    SpeakerID INT,
    City VARCHAR(100),
    State VARCHAR(100),
    CONSTRAINT FK_Venue FOREIGN KEY (VenueID) REFERENCES Venue(VenueID),
    CONSTRAINT FK_Speaker FOREIGN KEY (SpeakerID) REFERENCES Speaker(SpeakerID)
);

CREATE TABLE Ticket (
    TicketID INT PRIMARY KEY,
    AttendeeID INT,
    EventID INT,
    Price DECIMAL(10,2),
    TicketType VARCHAR(50),
    PurchaseDate DATE,
    Quantity INT,
    PaymentMethod VARCHAR(50),
    CONSTRAINT FK_Attendee FOREIGN KEY (AttendeeID) REFERENCES Attendee(AttendeeID),
    CONSTRAINT FK_Event FOREIGN KEY (EventID) REFERENCES Event(EventID)
);

CREATE TABLE AttendeeEventTicket (
    AttendeeID INT,
    TicketID INT,
    EventID INT,
    PRIMARY KEY (AttendeeID, TicketID, EventID),
    FOREIGN KEY (AttendeeID) REFERENCES Attendee(AttendeeID),
    FOREIGN KEY (TicketID) REFERENCES Ticket(TicketID),
    FOREIGN KEY (EventID) REFERENCES Event(EventID)
);

CREATE TABLE SpeakerOrder (
    SpeakerID INT,
    EventID INT,
    SpeakerOrderNum INT,
    PRIMARY KEY (SpeakerID, EventID, SpeakerOrderNum),
    FOREIGN KEY (EventID) REFERENCES Event(EventID),
    FOREIGN KEY (SpeakerID) REFERENCES Speaker(SpeakerID)
);
