SELECT DISTINCT TIMEDIFF( 
                (SELECT end_pair FROM Timepair WHERE id=4),
                (SELECT start_pair FROM Timepair WHERE id=2)
                ) AS time
FROM Timepair;