/* https://www.hackerrank.com/challenges/contest-leaderboard/problem */

SELECT hackers.hacker_id, hackers.name, SUM(score)
FROM hackers
INNER JOIN (
    SELECT hacker_id, challenge_id, MAX(score) AS score
    FROM submissions
    GROUP BY hacker_id, challenge_id) sub
    ON sub.hacker_id = hackers.hacker_id
GROUP BY hackers.hacker_id, hackers.name
HAVING SUM(score) > 0
ORDER BY SUM(score) DESC, hacker_id ASC