create database day1;
use day1;

-- create table -- variable datatype constraints
-- constraint -- 
-- 1. auto increment -> 
	-- SERIAL/ auto_increment, ids will increment automatically
    -- by default value `1`
-- 2. not null 
	-- in database can't keep this variable empty
    -- if it is kept null, it will throw error
-- 3. date 
	-- date type - format - ('yyyy-mm-dd') - '2020-12-31'
-- 4. decimal
	-- decimal(size, precision)
    -- salary decimal(10,2) - salary has size - 10 figures ,  precision - 2 decimal points
    
create table employee1(
employee_id serial primary key,
first_name varchar(20) not null, 
last_name varchar(50),
dob date,
hire_date date not null, 
department_id int,
salary decimal(10,2) check (salary >0)
);

insert into employee1 (employee_id, first_name, last_name,dob, hire_date, department_id, salary)
values(101, 'virat', 'kohli', '1994-12-04', '2005-09-01', 21, 100000.54);
select * from employee1;


CREATE TABLE Players (
Player_ID INT PRIMARY KEY,
Player_Name VARCHAR(50),
Team VARCHAR(10),
Season INT,
Matches_Played INT,
Runs INT,
Wickets INT,
Strike_Rate FLOAT,
Economy FLOAT,
Man_of_the_Match INT,
Points INT
);

INSERT INTO Players (Player_ID, Player_Name, Team, Season, Matches_Played, Runs, Wickets, Strike_Rate, Economy,
Man_of_the_Match, Points)
VALUES
(1, 'Virat Kohli', 'RCB', 2016, 16, 973, 0, 152.03, NULL, 4, 2100),
(2, 'MS Dhoni', 'CSK', 2018, 16, 455, 0, 138.41, NULL, 3, 1800),
(3, 'Rohit Sharma', 'MI', 2019, 15, 405, 0, 130.82, NULL, 2, 1600),
(4, 'David Warner', 'SRH', 2017, 14, 641, 0, 147.56, NULL, 3, 1900),
(5, 'Jasprit Bumrah', 'MI', 2020, 15, 50, 27, NULL, 6.73, 2, 1700),
(6, 'KL Rahul', 'PBKS', 2021, 13, 626, 0, 138.8, NULL, 3, 1850),
(7, 'AB de Villiers', 'RCB', 2016, 16, 687, 0, 168.12, NULL, 4, 2000),
(8, 'Hardik Pandya', 'GT', 2022, 15, 487, 8, 131.27, 7.28, 2, 1750),
(9, 'Andre Russell', 'KKR', 2019, 14, 510, 11, 204.81, 9.00, 3, 1850),
(10, 'Shikhar Dhawan', 'DC', 2020, 17, 618, 0, 144.73, NULL, 2, 1900),
(11, 'Kagiso Rabada', 'DC', 2020, 17, 35, 30, NULL, 8.34, 1, 1800),
(12, 'Sunil Narine', 'KKR', 2018, 16, 357, 17, 180.56, 8.12, 1, 1750),
(13, 'Ravindra Jadeja', 'CSK', 2021, 16, 227, 13, 145.51, 7.06, 3, 1650),

(14, 'Chris Gayle', 'PBKS', 2015, 15, 733, 0, 153.32, NULL, 3, 2000),
(15, 'Suresh Raina', 'CSK', 2014, 16, 523, 2, 146.68, NULL, 2, 1700),
(16, 'Rashid Khan', 'SRH', 2019, 15, 34, 19, NULL, 6.12, 1, 1850),
(17, 'Bhuvneshwar Kumar', 'SRH', 2016, 14, 23, 23, NULL, 7.42, 0, 1800),
(18, 'Glenn Maxwell', 'RCB', 2021, 15, 513, 3, 144.23, NULL, 2, 1750),
(19, 'Yuzvendra Chahal', 'RR', 2022, 17, 12, 27, NULL, 7.75, 1, 1850),
(20, 'Chris Morris', 'RR', 2021, 13, 95, 15, NULL, 8.02, 1, 1600),
(21, 'Faf du Plessis', 'RCB', 2022, 16, 468, 0, 127.62, NULL, 1, 1700),
(22, 'Shubman Gill', 'GT', 2022, 16, 483, 0, 132.32, NULL, 2, 1650),
(23, 'Dwayne Bravo', 'CSK', 2013, 18, 80, 32, NULL, 8.45, 1, 1900),
(24, 'Mohammed Shami', 'GT', 2022, 16, 10, 20, NULL, 7.9, 1, 1750),
(25, 'Parthiv Patel', 'MI', 2018, 14, 395, 0, 130.82, NULL, 1, 1500);

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

INSERT INTO indian_web_series (series_id, title, genre, language, release_year, platform, rating,
seasons, episodes_per_season, budget, director, lead_actor, award_count, critic_score,
audience_score) VALUES
(1, 'Sacred Games', 'Crime', 'Hindi', 2018, 'Netflix', 8.6, 2, 8, 50.0, 'Anurag Kashyap', 'Nawazuddin
Siddiqui', 7, 9.1, 8.9),
(2, 'Mirzapur', 'Action', 'Hindi', 2018, 'Amazon Prime', 8.5, 2, 9, 40.0, 'Gurmeet Singh', 'Pankaj Tripathi', 5,
8.7, 8.5),
(3, 'Paatal Lok', 'Thriller', 'Hindi', 2020, 'Amazon Prime', 8.0, 1, 9, 30.0, 'Avinash Arun', 'Jaideep Ahlawat', 6,
8.4, 8.0),

(4, 'The Family Man', 'Action', 'Hindi', 2019, 'Amazon Prime', 8.7, 2, 8, 60.0, 'Raj & DK', 'Manoj Bajpayee', 8,
9.0, 8.8),
(5, 'Delhi Crime', 'Drama', 'Hindi', 2019, 'Netflix', 8.5, 1, 7, 20.0, 'Richie Mehta', 'Shefali Shah', 10, 9.3, 8.7),
(6, 'Made in Heaven', 'Drama', 'Hindi', 2019, 'Amazon Prime', 8.3, 1, 9, 25.0, 'Zoya Akhtar', 'Arjun Mathur',
4, 8.6, 8.3),
(7, 'TVF Pitchers', 'Drama', 'Hindi', 2015, 'TVF Play', 9.1, 2, 5, 15.0, 'Arunabh Kumar', 'Naveen Kasturia', 3,
9.4, 9.0),
(8, 'Kota Factory', 'Drama', 'Hindi', 2019, 'Netflix', 9.2, 2, 5, 10.0, 'Raghav Subbu', 'Mayur More', 2, 9.6, 9.3),
(9, 'Asur', 'Thriller', 'Hindi', 2020, 'Voot', 8.4, 1, 8, 18.0, 'Oni Sen', 'Arshad Warsi', 3, 8.5, 8.4),
(10, 'Breathe', 'Drama', 'Hindi', 2018, 'Amazon Prime', 7.6, 2, 8, 35.0, 'Mayank Sharma', 'R. Madhavan', 4,
8.0, 7.8),
(11, 'Panchayat', 'Comedy', 'Hindi', 2020, 'Amazon Prime', 8.9, 2, 8, 10.0, 'Deepak Kumar Mishra', 'Jitendra
Kumar', 2, 9.1, 9.0),
(12, 'Scam 1992', 'Drama', 'Hindi', 2020, 'SonyLIV', 9.4, 1, 10, 12.0, 'Hansal Mehta', 'Pratik Gandhi', 15, 9.7,
9.5),
(13, 'Special OPS', 'Action', 'Hindi', 2020, 'Hotstar', 8.5, 1, 8, 45.0, 'Neeraj Pandey', 'Kay Kay Menon', 4, 8.6,
8.7),
(14, 'Aarya', 'Drama', 'Hindi', 2020, 'Hotstar', 8.1, 1, 9, 30.0, 'Ram Madhvani', 'Sushmita Sen', 3, 8.2, 8.0),
(15, 'Inside Edge', 'Drama', 'Hindi', 2017, 'Amazon Prime', 7.8, 3, 10, 20.0, 'Karan Anshuman', 'Vivek
Oberoi', 2, 8.1, 7.9);


select * from players;
select player_id, player_name, team from players;

select * from players 
where runs>400;

select * from indian_web_series;
-- Q1 Find all web series released after 2018 with a rating above 8.5 and budget above 20 crores. 
-- Sort the results by rating in descending order.	
											
select * from indian_web_series
where release_year>2018 and rating>8.5 and budget> 50
order by rating desc;

-- Q2 Retrieve the titles, platforms, and audience scores of all Drama series with more than 1 season. 
-- Sort the results by audience score in descending order.												
select title, platform, audience_score
 from indian_web_series
 where seasons>1 and genre = 'Drama'
 order by audience_score desc;
 
 -- Q3 List the titles, lead actors, and critic scores of the top 5 web series with the highest critic scores.												
select title, lead_actor, critic_score 
from indian_web_series
order by critic_score desc
limit 5;


-- Q4 Find the titles of all web series with a release year between 2018 and 2020, 
-- more than 8 episodes per season, and a critic score higher than 8.5. 
-- Sort the results by release year in ascending order.												
																						
select title, release_year, episodes_per_season, critic_score
from indian_web_series
where (release_year between 2018 and 2020) and episodes_per_season >8 and critic_score> 8.5
order by release_year asc;

-- Q5 Find the titles, platforms, and directors of the web series that meet the following conditions:																								
-- 1.Have a budget less than 40 crores OR a rating greater than 8.3.												
-- 2.Released in 2019 or later.												
-- 3.Belong to the genres 'Drama' or 'Action'.	
-- 4.Exclude the top 3 results with the highest ratings.															
-- 5.Sort the remaining results first by platform in alphabetical order and then by budget in ascending order. 
-- Display only the 4th to 6th rows.	
											
select title, platform, director 
from indian_web_series
where (budget<40 or rating> 8.3) and
 (release_year>= 2019) and 
 (genre in ('Drama','Action')) 
 order by platform asc, budget asc, rating desc
 limit 3
 offset 3;
 

 

