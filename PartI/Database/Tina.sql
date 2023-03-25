//9.1.1
select sum(Candidate.votes) as votes from Candidate;

//9.1.2
select sum(Candidate.votes) as votes, 
concat(
    round((sum(Candidate.votes) * 100/ Ward.electorate), 2), '%') as percentage from Candidate
inner join Ward on Ward.id = Candidate.ward
where Ward.name = 'Windmill Hill';

//9.1.3
select Candidate.name as name, Party.name as party, 
    round((Candidate.votes * 100 / (select sum(Candidate.votes) from Candidate join Ward where Ward.id = Candidate.ward and Ward.name = 'Southville')), 
    2) as percentage from Candidate
inner join Ward on Ward.id = Candidate.ward
inner join Party on Party.id = Candidate.party
where Ward.name = 'Southville'
order by percentage desc;

//9.1.4
select t1.name as name, round((t1.votes / t2.votes)*100, 2) as percentage
from
    (select Ward.name as name, sum(Candidate.votes) as votes from Candidate
    join Party on Party.id = Candidate.party
    join Ward on Ward.id = Candidate.ward
    where Party.name = 'Conservative'
    group by Candidate.ward) as t1
join
    (select Ward.name as name, sum(Candidate.votes) as votes from Candidate
    join Party on Party.id = Candidate.party
    join Ward on Ward.id = Candidate.ward
    group by Candidate.ward) as t2
on t1.name = t2.name
order by percentage desc;

//9.1.5
select t1.rank from
(select rank() over (order by votes desc) rank,
p.name as name, sum(c.votes) as votes
from Candidate c
join Ward w on w.id = c.ward
join Party p on p.id = c.party
where w.name = 'Whitchurch Park'
group by p.name) as t1
where t1.name = 'Labour';

//9.1.6
select Party.name, sum(Candidate.votes) as votes
from Candidate
join Party on Party.id =  Candidate.party
group by Party.name
order by votes desc;

//9.1.7
select t1.ward as ward, (t1.votes - t2.votes) as difference from
(select Ward.name as ward, sum(Candidate.votes) as votes from Candidate
join Ward on Ward.id = Candidate.ward
join Party on Party.id = Candidate.party
where Party.name = 'Green'
group by Ward.id) as t1
join
(select Ward.name as ward, sum(Candidate.votes) as votes from Candidate
join Ward on Ward.id = Candidate.ward
join Party on Party.id = Candidate.party
where Party.name = 'Labour'
group by Ward.id) as t2
on t1.ward = t2.ward
where t1.votes > t2.votes;

//answer
select t1.ward, (t1.votes - t2.votes) from
(select Ward.name as ward, Candidate.votes from Candidate
join Ward on Ward.id = Candidate.ward
join Party on Party.id = Candidate.party
where Party.name = 'Green') as t1
join
(select Ward.name as ward, Candidate.votes as votes from Candidate
join Ward on Ward.id = Candidate.ward
join Party on Party.id = Candidate.party
where Party.name = 'Labour') as t2
on t1.ward = t2.ward
where t1.votes > t2.votes;

//9.2.1
select sum(s.data) from Statistic s join Occupation o on o.id = s.occId where o.id = '7' and s.gender = '1' and s.wardId = 'E05001979';

//9.2.2
select sum(s.data) from Statistic s join Occupation o on o.id = s.occId where o.id = '7' and s.wardId = 'E05001979';

//9.2.3
select sum(s.data) from Statistic s join Occupation o on o.id = s.occId join Ward w on w.code = s.wardId join County c on w.parent = c.code 
where o.id = '6' and c.code = 'E06000023';

//9.2.4
select o.name, sum(s.data) as count from Statistic s join Occupation o on o.id = s.occId join Ward w on w.code = s.wardId
where w.code = 'E05001979'
group by o.name;

//9.2.5
select c.name as CLU, w.name as Ward, sum(s.data) as population from Statistic s
join Ward w on s.wardId = w.code
join County c on c.code = w.parent
group by w.name
order by population
limit 1;

//9.2.6
(select c.name as CLU, w.name as Ward, sum(s.data) as population from Statistic s
join Ward w on s.wardId = w.code
join County c on c.code = w.parent
group by w.name
order by population
limit 1)
union all
(select c.name as CLU, w.name as Ward, sum(s.data) as population from Statistic s
join Ward w on s.wardId = w.code
join County c on c.code = w.parent
group by w.name
order by population desc
limit 1);

select * from
(select c.name as CLU, w.name as Ward, sum(s.data) as population from Statistic s
join Ward w on s.wardId = w.code
join County c on c.code = w.parent
group by w.name
order by population
limit 1) as smallest
union all
select * from
(select c.name as CLU, w.name as Ward, sum(s.data) as population from Statistic s
join Ward w on s.wardId = w.code
join County c on c.code = w.parent
group by w.name
order by population desc
limit 1) as largest;

//9.2.7
select 'London' as 'Region', (round(avg(t1.population), 0)) as average
from
(select w.name as ward, sum(s.data) as population from Statistic s
join Ward w on w.code = s.wardId
join County c on c.code = w.parent
join Region r on r.code = c.parent
where r.name like '%London%'
group by w.code) as t1;

select avg(t1.population) as average
from
(select w.name as ward, sum(data) as population from Statistic s
join Ward w on w.code = s.wardId
join County c on c.code = w.parent
join Region r on r.code = c.parent
where r.name like '%London%'
group by w.code) as t1;

//answer
select t1.region as region, (round((t1.population / t2.wards), 0)) as average
from
(select r.name as region, sum(s.data) as population from Statistic s
join Ward w on w.code = s.wardId
join County c on c.code = w.parent
join Region r on r.code = c.parent
group by r.code) as t1
join
(select r.name as region, count(w.code) as wards from County c
join Ward w on w.parent = c.code
join Region r on r.code = c.parent
group by r.code) as t2
on t1.region = t2.region
where t1.region = 'London';

//9.2.8
select t1.region as region,(round(avg(t1.population), 0)) as average
from
(select w.name as ward, r.name as region, sum(s.data) as population from Statistic s
join Ward w on w.code = s.wardId
join County c on c.code = w.parent
join Region r on r.code = c.parent
group by w.code) as t1
group by t1.region;

//9.2.9
select t1.region as region, concat(round((t1.population * 100 / t2.population), 2), '%') as percentage
from
(select r.name as region, sum(s.data) as population from Statistic s
join Occupation o on o.id = s.occId
join Ward w on w.code = s.wardId
join County c on c.code = w.parent
join Region r on r.code = c.parent
where s.occId = '1'
and s.gender = '1'
group by r.code) as t1
join
(select r.name as region, sum(s.data) as population from Statistic s
join Occupation o on o.id = s.occId
join Ward w on w.code = s.wardId
join County c on c.code = w.parent
join Region r on r.code = c.parent
where s.occId = '1'
group by r.code) as t2
on t1.region = t2.region
order by percentage desc;

//9.2.10
select c.name as CLU, sum(s.data) as count, o.name as Occupation from Statistic s
join Occupation o on o.id = s.occId
join Ward w on w.code = s.wardId
join County c on c.code = w.parent
join Region r on r.code = c.parent
where r.name = 'London'
group by o.name, c.code
having sum(s.data) > 10000
order by sum(s.data);

//9.2.11
select t1.occupation, t1.women as women, t2.men as men 
from
(select o.name as occupation, sum(s.data) as women from Statistic s
join Occupation o on o.id = s.occId
where s.gender = '1'
group by o.id) as t1
join
(select o.name as occupation, sum(s.data) as men from Statistic s
join Occupation o on o.id = s.occId
where s.gender = '0'
group by o.id) as t2
on t1.occupation = t2.occupation;

//9.2.12
select
coalesce(a1.region, 'England') as region,
concat(round(avg(a1.percentage), 2), '%') as percentage
from
(select t1.region as region, round((t1.population * 100 / t2.population), 2) as percentage
from
(select r.name as region, sum(s.data) as population from Statistic s
join Occupation o on o.id = s.occId
join Ward w on w.code = s.wardId
join County c on c.code = w.parent
join Region r on r.code = c.parent
where s.occId = '1'
and s.gender = '1'
group by r.code) as t1
join
(select r.name as region, sum(s.data) as population from Statistic s
join Occupation o on o.id = s.occId
join Ward w on w.code = s.wardId
join County c on c.code = w.parent
join Region r on r.code = c.parent
where s.occId = '1'
group by r.code) as t2
on t1.region = t2.region) as a1
group by a1.region
with rollup;
