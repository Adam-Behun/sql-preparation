/* https://www.hackerrank.com/challenges/challenges/problem */

select h.hacker_id, h.name, count(c.challenge_id) total_challenges_created
from hackers h 
join challenges c on h.hacker_id=c.hacker_id
group by h.hacker_id, h.name
having 
    total_challenges_created = (select count(challenge_id) as max_count
                                  from challenges 
                                  group by hacker_id
                                  order by max_count desc
                                  limit 1)
    or total_challenges_created in (select t.count from (select count(challenge_id) as count
                                                        from challenges 
                                                        group by hacker_id) t
                                   group by t.count having count(t.count)=1)
order by total_challenges_created desc, h.hacker_id asc;