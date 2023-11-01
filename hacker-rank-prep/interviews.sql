/* https://www.hackerrank.com/challenges/interviews/problem */

SELECT c1.contest_id, c1.hacker_id, c1.name, ts, tas, tv, tuv
FROM Contests c1
JOIN (
    SELECT c2.contest_id as cid1, sum(v.total_views) as tv, sum(v.total_unique_views) as tuv
    FROM View_Stats v
    JOIN Challenges c3 ON v.challenge_id = c3.challenge_id
    JOIN Colleges c2 ON c3.college_id = c2.college_id
    GROUP BY cid1)
    tabl1 ON c1.contest_id = tabl1.cid1
JOIN (
    SELECT c2.contest_id as cid2, sum(s.total_submissions) as ts, sum(s.toatl_accepted_submissions) as tas
    FROM submission_stats as s
    JOIN Challenges c3 ON s.challenge_id = c3.challenge_id
    JOIN Colleges c2 ON c3.college_id = c2.college_id
    GROUP BY cid2
) tabl2 ON c1.contest_id == tabl2.cid2
ORDER BY c1.contest_id;