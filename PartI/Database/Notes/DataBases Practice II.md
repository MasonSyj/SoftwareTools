# DataBases Practice II

Created time: February 16, 2023 3:05 PM
Tags: Tools

```sql
// How many votes were cast in all of Bristol in the 2014 elections?
// How many votes were cast in the 'Windmill Hill' ward and what percentage of the electorate in this ward does this represent? Your statement should produce a table with one row and two columns called 'votes' and 'percentage'.
SELECT Ward.electorate, Ward.electorate / SUM(electorate) FROM Candidate, Party, Ward WHERE Candidate.party = Party.id AND Candidate.ward = Ward.id AND Ward.name LIKE 'Windmill Hill';
// List the names, parties and percentage of votes obtained for all candidates in the Southville ward. Order the candidates by percentage of votes obtained descending.
SELECT Candidate.name as Cname, Party.name as Pname, Candidate.votes / electorate FROM Party, Candidate, Ward WHERE Party.id = Candidate.party AND Ward.id = Candidate.ward AND Ward.name LIKE 'Southville' ORDER BY votes DESC;
// How successful (in % of votes cast) was the Conservative party in each ward?
SELECT Candidate.name as Cname, Ward.name as Wname, Candidate.votes / electorate FROM Party, Candidate, Ward WHERE Party.id = Candidate.party AND Ward.id = Candidate.ward AND Party.name LIKE 'Conservative' ORDER BY votes DESC;
// Which rank did Labour end up in the 'Whitchurch Park' ward? Your statement should produce a table with a single row and column containing the answer as a number. You can assume no ties.
// What is the total number of votes that each party got in the elections? Your result should be a table with two columns party, votes.
// Find all wards where the Green party beat Labour and create a table with two columns ward, difference where the difference column is the number of Green votes minus the number of Labour votes. Your table should be ordered by difference, with the highest one first.
```