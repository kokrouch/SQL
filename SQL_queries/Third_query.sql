SELECT DISTINCT Rooms.*
FROM Rooms
JOIN Reservations
    ON Rooms.id=Reservations.room_id
WHERE WEEK(start_date, 1) = 12 AND YEAR(start_date)=2020;