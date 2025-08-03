-- Owners
INSERT INTO Owner (Name, Email, Phone) VALUES
('Alice Smith', 'alice@example.com', '555-1234'),
('Bob Johnson', 'bob@example.com', '555-5678');

-- Pets
INSERT INTO Pet (OwnerID, Name, Type, Breed, Age, Notes) VALUES
(1, 'Buddy', 'Dog', 'Golden Retriever', 3, 'Very friendly'),
(1, 'Mittens', 'Cat', 'Siamese', 5, 'Hates loud noises'),
(2, 'Rex', 'Dog', 'German Shepherd', 4, 'Needs special food');

-- Sitters
INSERT INTO Sitter (Name, Phone, Rating) VALUES
('Samantha Green', '555-9876', 4.8),
('Jake Miller', '555-8765', 4.2);

-- Appointments
INSERT INTO SittingAppointment (PetID, SitterID, StartDate, EndDate, Status) VALUES
(1, 1, '2025-07-25 09:00', '2025-07-25 17:00', 'Completed'),
(2, 2, '2025-07-26 12:00', '2025-07-26 15:00', 'Scheduled');

-- Sitter Ratings
INSERT INTO SitterRating (SitterID, OwnerID, AppointmentID, Rating, Comment, DateSubmitted) VALUES
(1, 1, 1, 5, 'Samantha was great!', '2025-07-25');

-- Pet Ratings
INSERT INTO PetRating (PetID, SitterID, AppointmentID, Rating, Comment, DateSubmitted) VALUES
(1, 1, 1, 5, 'Buddy was a sweetheart.', '2025-07-25');
