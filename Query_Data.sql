-----------------------------------------------------------------------------
Query 1: Combine Event names with their Speakers and Venues
-----------------------------------------------------------------------------
SELECT 
    E.EventName, E.EventDate, E.EventTime, 
    V.VenueName, V.City AS VenueCity, V.State AS VenueState,
    S.FirstName AS SpeakerFirstName,
    S.LastName AS SpeakerLastName
FROM 
    Event E
JOIN 
    Venue V ON E.VenueID = V.VenueID
JOIN 
    Speaker S ON E.SpeakerID = S.SpeakerID;
-----------------------------------------------------------------------------
Query 2: List Attendees based on their Ticket Type / price for which event
-----------------------------------------------------------------------------
SELECT 
    A.FirstName AS AttendeeFirstName,
    A.LastName AS AttendeeLastName,
    T.TicketType,
    T.Price,
    E.EventName
FROM 
    Attendee A
JOIN 
    Ticket T ON A.AttendeeID = T.AttendeeID
JOIN 
    Event E ON T.EventID = E.EventID;

-----------------------------------------------------------------------------
Query 3: List speakers based on who is speaking the soonest, and for which event.
-----------------------------------------------------------------------------
SELECT 
    S.FirstName AS SpeakerFirstName,
    S.LastName AS SpeakerLastName,
    E.EventName,
    E.EventDate,
    E.EventTime
FROM 
    Speaker S
JOIN 
    SpeakerOrder SO ON S.SpeakerID = SO.SpeakerID
JOIN 
    Event E ON SO.EventID = E.EventID
ORDER BY 
    E.EventDate;
-----------------------------------------------------------------------------
Query 4: Seperate payment methods based on their count
-----------------------------------------------------------------------------
SELECT 
    PaymentMethod, 
    COUNT(*) AS PaymentCount
FROM 
    Ticket
GROUP BY 
    PaymentMethod
ORDER BY 
    PaymentCount DESC;


