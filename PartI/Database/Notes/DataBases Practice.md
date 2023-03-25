# DataBases Practice

Created time: February 16, 2023 10:25 AM
Tags: Tools

```sql
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS Commitee;
DROP TABLE IF EXISTS Event;

CREATE TABLE IF NOT EXISTS Member
(Name VARCHAR(20) NOT NULL, 
Number INT, 
Email VARCHAR(50) NOT NULL, 
SKILL INT
PRIMARY KEY(Name));

CREATE TABLE IF NOT EXISTS Commitee
(MemberName VARCHAR(20) NOT NULL, 
Role VARCHAR(20) NOT NULL,
FOREIGN KEY(MemberName) REFERENCES Member(Name),
PRIMARY KEY (Role));

CREATE TABLE IF NOT EXISTS Event
(HeldDate DATE NOT NULL, 
EventName VARCHAR(20) NOT NULL, 
Location VARCHAR(20) NOT NULL, 
Organiser VARCHAR(20) NOT NULL, 
Description Text,
FOREIGN KEY (Organiser) REFERENCES Member(Name));

**//////////////////////////////////////////////////
// List the names of all parties that stood in the election, ordered alphabetically by name.
SELECT * FROM Party ORDER BY name ASC;
// List the names of all parties that stood in the Bedminster ward.
SELECT DISTINCT Party.name as name FROM Party, Candidate, Ward 
WHERE Party.id = Candidate.party AND Candidate.ward = Ward.id;

SELECT DISTINCT Party.name as name FROM Party 
INNER JOIN Candidate ON Candidate.party = Party.id 
INNER JOIN Ward ON Ward.id = Candidate.ward;
// How many votes did Labour get in the Stockwood ward?
SELECT *,COUNT(votes) FROM Candidate 
INNER JOIN Party ON Candidate.party = Party.id 
INNER JOIN Ward ON Ward.id = Candidate.ward 
WHERE Party.name LIKE 'Labour' AND Ward.name LIKE 'Stockwood';
SELECT * FROM Candidate 
INNER JOIN Party ON Candidate.party = Party.id 
INNER JOIN Ward ON Ward.id = Candidate.ward 
WHERE Party.name LIKE 'Labour' AND Ward.name LIKE 'Stockwood';
// List the names, parties and number of votes obtained for all candidates in the Southville ward. Order the candidates by number of votes obtained descending (winner comes first).
SELECT Candidate.name, Candidate.votes, Party.name 
FROM Candidate, Party, Ward 
WHERE Candidate.party = Party.id AND Candidate.ward = Ward.id AND Ward.name LIKE 'Southville' 
ORDER BY Votes DESC;

SELECT Candidate.name, Candidate.votes Party.name 
FROM Candidate, Party 
INNER JOIN Party on Candidate.party = Party.id 
INNER JOIN Ward ON Ward.id = Candidate.ward;
// List the name, party and number of votes obtained for the winner only in the Knowle ward. (Hint: apart from changing the ward name, you only need one small modification to the statement from the last question. You may assume no ties.)
SELECT Candidate.name, Candidate.votes, Party.name 
FROM Candidate, Party, Ward 
WHERE Candidate.party = Party.id AND Candidate.ward = Ward.id AND Ward.name LIKE 'Knowle' 
ORDER BY Votes DESC LIMIT 1;**
```

```sql
// 1.The university of Bristol is situated in the Cabot ward (ward names are not always distinct, but this one is). Find the names and codes of the CLU, region and country containing the Cabot ward (CLU = county level unit = "row in County table").
SELECT * FROM Ward, County, Country, Region WHERE Ward.parent = County.code AND County.country = Country.code AND County.parent = Region.code AND Ward.name LIKE 'Cabot';
// 2.If you used multiple SQL queries for the last question, do it in one single query now. (In other words, find a join strategy for the tables you need.)
// 3.Find the number of women in occupation class 1 (managers etc.) in the Cabot ward. You may use ward code for Cabot that you found in the first query and the occupation id 1 directly - you do not need any JOINs for this query.
// 4.For the Stoke Bishop ward (E05002003), list the 9 occupation class names and the number of men in each occupation. Your table should have two columns called name and number. You can use the provided ward code, you do not need to join on the ward name.
// Find all ward names that are not unique, and print them in alphabetical order (only once each).
SELECT * FROM Ward GROUP BY Ward.name having COUNT(*) > 1;
```