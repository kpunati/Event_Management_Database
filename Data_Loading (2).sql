INSERT INTO Speaker (SpeakerID, FirstName, LastName, Bio, ContactEmail, ContactPhoneNumber, City, State, Rate)
VALUES
(1, 'Alice', 'Johnson', 'Expert in marketing strategies', 'alice.johnson@example.com', '111-222-3333', 'New York', 'NY', 2500.00),
(2, 'Bob', 'Smith', 'Motivational speaker on leadership', 'bob.smith@example.com', '444-555-6666', 'Chicago', 'IL', 2800.00),
(3, 'Carol', 'Williams', 'Technology conference keynote', 'carol.williams@example.com', '777-888-9999', 'San Francisco', 'CA', 3000.00),
(4, 'David', 'Brown', 'Healthcare trends speaker', 'david.brown@example.com', '123-456-7890', 'Houston', 'TX', 1500.00),
(5, 'Eve', 'Davis', 'Economics expert', 'eve.davis@example.com', '321-654-0987', 'Boston', 'MA', 3200.00);

INSERT INTO Attendee (AttendeeID, FirstName, LastName, Email, Phone, City, State)
VALUES
(1, 'Frank', 'Garcia', 'frank.garcia@example.com', '555-111-2222', 'Denver', 'CO'),
(2, 'Grace', 'Miller', 'grace.miller@example.com', '666-333-4444', 'Phoenix', 'AZ'),
(3, 'Heidi', 'Lopez', 'heidi.lopez@example.com', '777-555-6666', 'Seattle', 'WA'),
(4, 'Isaac', 'Martinez', 'isaac.martinez@example.com', '888-777-8888', 'Orlando', 'FL'),
(5, 'Judy', 'Wilson', 'judy.wilson@example.com', '999-999-0000', 'Las Vegas', 'NV'),
(6, 'Kevin', 'Lee', 'kevin.lee@example.com', '222-333-4444', 'Chicago', 'IL'),
(7, 'Laura', 'Moore', 'laura.moore@example.com', '333-444-5555', 'New York', 'NY'),
(8, 'Michael', 'Johnson', 'michael.johnson@example.com', '444-555-6666', 'Houston', 'TX'),
(9, 'Nina', 'White', 'nina.white@example.com', '555-666-7777', 'Los Angeles', 'CA'),
(10, 'Oliver', 'Harris', 'oliver.harris@example.com', '666-777-8888', 'Phoenix', 'AZ'),
(11, 'Paula', 'Green', 'paula.green@example.com', '777-888-9999', 'Seattle', 'WA'),
(12, 'Quentin', 'Brown', 'quentin.brown@example.com', '888-999-0000', 'Denver', 'CO'),
(13, 'Rachel', 'Clark', 'rachel.clark@example.com', '999-111-2222', 'Orlando', 'FL'),
(14, 'Sam', 'Davis', 'sam.davis@example.com', '111-222-3333', 'Las Vegas', 'NV'),
(15, 'Tina', 'Martinez', 'tina.martinez@example.com', '222-333-4444', 'Austin', 'TX');

INSERT INTO Venue (VenueID, VenueName, Address, City, State, Capacity, ContactPersonFirstName, ContactPersonLastName, ContactEmail, ContactPhoneNumber)
VALUES
(1, 'Grand Hall', '123 Main St', 'San Francisco', 'CA', 500, 'Liam', 'Jackson', 'liam.jackson@example.com', '123-123-1234'),
(2, 'Convention Center', '456 Market St', 'Los Angeles', 'CA', 2000, 'Olivia', 'Martinez', 'olivia.martinez@example.com', '456-456-4567'),
(3, 'Exhibition Pavilion', '789 Broadway', 'New York', 'NY', 1000, 'Noah', 'Rodriguez', 'noah.rodriguez@example.com', '789-789-7890'),
(4, 'Symposium Auditorium', '321 Elm St', 'Austin', 'TX', 700, 'Emma', 'Hernandez', 'emma.hernandez@example.com', '321-321-4321'),
(5, 'Conference Plaza', '654 Oak St', 'Miami', 'FL', 1500, 'William', 'Garcia', 'william.garcia@example.com', '654-654-6543');

INSERT INTO Event (EventID, EventName, EventDescription, EventDate, EventTime, VenueID, SpeakerID, City, State)
VALUES
(1, 'Tech Conference', 'Latest trends in technology and innovation', '2024-06-15', '09:00:00', 1, 3, 'San Francisco', 'CA'),
(2, 'Healthcare Summit', 'Innovations and strategies in healthcare', '2024-07-20', '10:30:00', 2, 4, 'Los Angeles', 'CA'),
(3, 'Leadership Workshop', 'Leadership skills and management', '2024-08-05', '11:00:00', 3, 2, 'New York', 'NY'),
(4, 'Marketing Expo', 'Marketing strategies and trends', '2024-09-10', '13:00:00', 4, 1, 'Austin', 'TX'),
(5, 'Economic Forum', 'Economic policies and market trends', '2024-10-25', '14:30:00', 5, 5, 'Miami', 'FL');

INSERT INTO Ticket (TicketID, AttendeeID, EventID, Price, TicketType, PurchaseDate, Quantity, PaymentMethod)
VALUES
(1, 1, 1, 200.00, 'VIP', '2024-05-10', 1, 'Credit Card'),
(2, 2, 2, 150.00, 'Standard', '2024-05-12', 1, 'Credit Card'),
(3, 3, 3, 250.00, 'Premium', '2024-05-14', 2, 'PayPal'),
(4, 4, 4, 100.00, 'Economy', '2024-05-16', 1, 'Debit Card'),
(5, 5, 5, 180.00, 'VIP', '2024-05-18', 1, 'Bank Transfer'),
(6, 6, 1, 100.00, 'Standard', '2024-05-20', 1, 'Credit Card'),
(7, 7, 2, 180.00, 'VIP', '2024-05-21', 1, 'PayPal'),
(8, 8, 3, 220.00, 'Premium', '2024-05-22', 2, 'Bank Transfer'),
(9, 9, 4, 140.00, 'Economy', '2024-05-23', 1, 'Credit Card'),
(10, 10, 5, 150.00, 'VIP', '2024-05-24', 1, 'Debit Card'),
(11, 11, 1, 200.00, 'Standard', '2024-05-25', 2, 'Credit Card'),
(12, 12, 2, 170.00, 'Standard', '2024-05-26', 1, 'PayPal'),
(13, 13, 3, 230.00, 'VIP', '2024-05-27', 1, 'Credit Card'),
(14, 14, 4, 180.00, 'Premium', '2024-05-28', 1, 'Debit Card'),
(15, 15, 5, 190.00, 'Economy', '2024-05-29', 1, 'Bank Transfer');

INSERT INTO AttendeeEventTicket (AttendeeID, TicketID, EventID)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

INSERT INTO SpeakerOrder (SpeakerID, EventID, SpeakerOrderNum)
VALUES
(1, 4, 1),
(2, 3, 1),
(3, 1, 1),
(4, 2, 1),
(5, 5, 1);

