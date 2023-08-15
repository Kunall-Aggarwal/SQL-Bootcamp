-- 					ASSESSMENT 2


-- SELECT * FROM cd.facilities;

-- SELECT name, membercost FROM cd.facilities;

-- SELECT * FROM cd.facilities WHERE membercost > 0;

-- SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
-- WHERE membercost > 0 AND membercost < (monthlymaintenance/50);

-- SELECT * FROM cd.facilities 
-- WHERE name LIKE '%Tennis%';

-- SELECT * FROM cd.facilities WHERE facid in (1,5);

-- SELECT * FROM cd.members
-- WHERE joindate >= '2012-09-1';

-- SELECT DISTINCT(surname) FROM cd.members 
-- ORDER BY surname LIMIT 10;

-- SELECT * FROM cd.members 
-- ORDER BY joindate DESC LIMIT 1;

-- SELECT * FROM cd.facilities WHERE guestcost >= 10;

-- SELECT facid, SUM(slots) FROM cd.bookings
-- WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01'
-- GROUP BY facid
-- ORDER BY SUM(slots);

-- SELECT facid, SUM(slots) FROM cd.bookings
-- GROUP BY facid
-- HAVING SUM(slots) > 1000
-- ORDER BY facid;	

-- SELECT starttime, name FROM cd.bookings as b
-- INNER JOIN cd.facilities as f
-- ON b.facid = f.facid
-- WHERE DATE(starttime) = '2012-09-21'
-- AND name ILIKE 'Tennis Court%'
-- ORDER BY starttime;

-- SELECT * FROM cd.bookings as b
-- FULL OUTER JOIN cd.members as me
-- ON b.memid = me.memid
-- WHERE me.surname='Farrell' AND me.firstname = 'David';

