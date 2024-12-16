CREATE TABLE indian_web_series (
series_id INT PRIMARY KEY,
title VARCHAR(100),
genre VARCHAR(50),
language VARCHAR(50),
release_year INT,
platform VARCHAR(50),
rating FLOAT,
seasons INT,
episodes_per_season INT,
budget FLOAT,
director VARCHAR(100),
lead_actor VARCHAR(100),
award_count INT,
critic_score FLOAT,
audience_score FLOAT
);

INSERT INTO indian_web_series (series_id, title, genre, language, release_year, platform, rating, seasons, episodes_per_season, budget, director, lead_actor, award_count, critic_score, audience_score) VALUES
(1, 'Sacred Games', 'Crime', 'Hindi', 2018, 'Netflix', 8.6, 2, 8, 50.0, 'Anurag Kashyap', 'Nawazuddin Siddiqui', 7, 9.1, 8.9),
(2, 'Mirzapur', 'Action', 'Hindi', 2018, 'Amazon Prime', 8.5, 2, 9, 40.0, 'Gurmeet Singh', 'Pankaj Tripathi', 5, 8.7, 8.5),
(3, 'Paatal Lok', 'Thriller', 'Hindi', 2020, 'Amazon Prime', 8.0, 1, 9, 30.0, 'Avinash Arun', 'Jaideep Ahlawat', 6, 8.4, 8.0),
(4, 'The Family Man', 'Action', 'Hindi', 2019, 'Amazon Prime', 8.7, 2, 8, 60.0, 'Raj & DK', 'Manoj Bajpayee', 8, 9.0, 8.8),
(5, 'Delhi Crime', 'Drama', 'Hindi', 2019, 'Netflix', 8.5, 1, 7, 20.0, 'Richie Mehta', 'Shefali Shah', 10, 9.3, 8.7),
(6, 'Made in Heaven', 'Drama', 'Hindi', 2019, 'Amazon Prime', 8.3, 1, 9, 25.0, 'Zoya Akhtar', 'Arjun Mathur', 4, 8.6, 8.3),
(7, 'TVF Pitchers', 'Drama', 'Hindi', 2015, 'TVF Play', 9.1, 2, 5, 15.0, 'Arunabh Kumar', 'Naveen Kasturia', 3, 9.4, 9.0),
(8, 'Kota Factory', 'Drama', 'Hindi', 2019, 'Netflix', 9.2, 2, 5, 10.0, 'Raghav Subbu', 'Mayur More', 2, 9.6, 9.3),
(9, 'Asur', 'Thriller', 'Hindi', 2020, 'Voot', 8.4, 1, 8, 18.0, 'Oni Sen', 'Arshad Warsi', 3, 8.5, 8.4),
(10, 'Breathe', 'Drama', 'Hindi', 2018, 'Amazon Prime', 7.6, 2, 8, 35.0, 'Mayank Sharma', 'R. Madhavan', 4, 8.0, 7.8),
(11, 'Panchayat', 'Comedy', 'Hindi', 2020, 'Amazon Prime', 8.9, 2, 8, 10.0, 'Deepak Kumar Mishra', 'Jitendra Kumar', 2, 9.1, 9.0),
(12, 'Scam 1992', 'Drama', 'Hindi', 2020, 'SonyLIV', 9.4, 1, 10, 12.0, 'Hansal Mehta', 'Pratik Gandhi', 15, 9.7, 9.5),
(13, 'Special OPS', 'Action', 'Hindi', 2020, 'Hotstar', 8.5, 1, 8, 45.0, 'Neeraj Pandey', 'Kay Kay Menon', 4, 8.6, 8.7),
(14, 'Aarya', 'Drama', 'Hindi', 2020, 'Hotstar', 8.1, 1, 9, 30.0, 'Ram Madhvani', 'Sushmita Sen', 3, 8.2, 8.0),
(15, 'Inside Edge', 'Drama', 'Hindi', 2017, 'Amazon Prime', 7.8, 3, 10, 20.0, 'Karan Anshuman', 'Vivek Oberoi', 2, 8.1, 7.9);

-- `and` is used when all the conditions are required to be satisfied


-- 1. Find all web series released after 2018 with a rating above 8.5 and 
-- budget above 20 crores. Sort the results by rating in descending order.		
select * from indian_web_series
where release_year>2018 and rating>8.5 and budget>20
order by rating desc;

-- 2. Retrieve the titles, platforms, 
-- and audience scores of all Drama series with more than 1 season. 
-- Sort the results by audience score in descending order.	
select title, platform, audience_score 
from indian_web_series
where genre = 'Drama' and episodes_per_season > 1
order by audience_score desc;

-- 3. List the titles, lead actors, 
-- and critic scores of the top 5 web series with the highest critic scores.
select title, lead_actor, critic_score 
from indian_web_series
order by critic_score desc
limit 5;

-- 4. Find the titles of all web series with a release year between 2018 and 2020, 
-- more than 8 episodes per season, and a critic score higher than 8.5. 
-- Sort the results by release year in ascending order.		
select title , release_year , seasons , critic_score
from indian_web_series 
where (release_year between 2018 and 2020) and --- (between 2018 and 2020) - 2018 AND 2020 to be included
seasons > 8 and critic_score >8.5 
order by release_year desc;

-- 	Q5	Find the titles, platforms, and directors of the web series that meet the following conditions:													
															
		-- 1.Have a budget less than 40 crores OR a rating greater than 8.3.													
		-- 2.Released in 2019 or later.													
		-- 3.Belong to the genres 'Drama' or 'Action'.													
		-- 4.Exclude the top 3 results with the highest ratings.													
		-- 5.Sort the remaining results first by platform in alphabetical order and 
		-- then by budget in ascending order. Display only the 4th to 6th rows.	

-- `and` - condition 1,2,3 has to be satisifed.
-- inside each condition - satisfy the condition seperately.
-- Need 3 rows - that's why limit is 3.
-- have to skip 3 rows -- that's why offset is 3. (exclude 1,2,3 rows)
-- brackets are important for the the conditions while using `and` , `or` 
----- if we don't put bracket - it will take first left part as one condition and remaining as another condition
--------- logically it will give wrong results.
---------- `or` has a precedence over `and`
---------- `or` part is required to be put in bracket.

select title, platform, director
from indian_web_series
where (budget<40 or rating > 8.3) and
(release_year >= 2019) and
(genre in ('Drama', 'Action')) 
order by rating desc, platform asc, budget asc
limit 3
offset 3;



-- Another way 
select title, platform, director
from indian_web_series
where (budget<40 or rating > 8.3) and
(release_year >= 2019) and
(genre = 'Drama' or genre = 'Action') 
order by rating desc, platform asc, budget asc
limit 3
offset 3;
-- in case if you want to find the bottom 3 , then use 
---- `order by asc`

												
												

