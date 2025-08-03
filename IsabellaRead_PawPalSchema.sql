-- Owner Table
CREATE TABLE Owner (
    OwnerID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20)
);

-- Pet Table
CREATE TABLE Pet (
    PetID SERIAL PRIMARY KEY,
    OwnerID INT REFERENCES Owner(OwnerID),
    Name VARCHAR(50),
    Type VARCHAR(50),
    Breed VARCHAR(50),
    Age INT,
    Notes TEXT
);

-- Sitter Table
CREATE TABLE Sitter (
    SitterID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(20),
    Rating FLOAT
);

-- SittingAppointment Table
CREATE TABLE SittingAppointment (
    AppointmentID SERIAL PRIMARY KEY,
    PetID INT REFERENCES Pet(PetID),
    SitterID INT REFERENCES Sitter(SitterID),
    StartDate TIMESTAMP,
    EndDate TIMESTAMP,
    Status VARCHAR(20)
);

-- SitterRating Table
CREATE TABLE SitterRating (
    RatingID SERIAL PRIMARY KEY,
    SitterID INT REFERENCES Sitter(SitterID),
    OwnerID INT REFERENCES Owner(OwnerID),
    AppointmentID INT REFERENCES SittingAppointment(AppointmentID),
    Rating INT CHECK (Rating BETWEEN 0 AND 5),
    Comment TEXT,
    DateSubmitted DATE
);

-- PetRating Table
CREATE TABLE PetRating (
    RatingID SERIAL PRIMARY KEY,
    PetID INT REFERENCES Pet(PetID),
    SitterID INT REFERENCES Sitter(SitterID),
    AppointmentID INT REFERENCES SittingAppointment(AppointmentID),
    Rating INT CHECK (Rating BETWEEN 0 AND 5),
    Comment TEXT,
    DateSubmitted DATE
);
