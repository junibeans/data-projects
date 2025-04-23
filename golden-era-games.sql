-- Find the top 10 best selling games.
SELECT *
FROM game_sales
ORDER BY games_sold DESC
LIMIT 10;

-- Find the top 10 years of game sales and critic score. 
SELECT 
	gs.year
	,uayr.num_games
	,ROUND(AVG(rev.critic_score), 2) AS avg_critic_score
FROM reviews AS rev
	INNER JOIN game_sales AS gs
		ON rev.name = gs.name
	INNER JOIN users_avg_year_rating AS uayr
		ON gs.year = uayr.year
WHERE uayr.num_games > 4
GROUP BY gs.year, uayr.num_games
ORDER BY avg_critic_score DESC
LIMIT 10;

-- Exploring the datasets
SELECT * 
FROM critics_avg_year_rating 
LIMIT 5;

SELECT * 
FROM users_avg_year_rating 
LIMIT 5;

-- Find the golden years of video games
SELECT cavg.year
	,cavg.num_games
	,cavg.avg_critic_score
	,uavg.avg_user_score
	,cavg.avg_critic_score - uavg.avg_user_score AS diff
FROM critics_avg_year_rating AS cavg 
	INNER JOIN users_avg_year_rating AS uavg 
		ON cavg.year = uavg.year
		AND cavg.num_games = uavg.num_games
WHERE uavg.avg_user_score > 9
	OR cavg.avg_critic_score > 9
GROUP BY cavg.year
	,cavg.num_games
	,cavg.avg_critic_score
	,uavg.avg_user_score
ORDER BY cavg.year;

-- Results:

-- 	index	year	num_games	avg_critic_score	avg_user_score	diff
--	0	1997	8		7.93			9.5		-1.57
--	1	1998	10		9.32			9.4		-0.08
--	2	2004	11		9.03			8.55		0.48
--	3	2008	20		8.63			9.03		-0.4
--	4	2009	20		8.55			9.18		-0.63
--	5	2010	23		8.41			9.24		-0.83