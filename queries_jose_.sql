USE lab_mysql_first_queries;

SELECT * 
FROM applestore2;

/* QUESTION 1. Which are the different genres? */
#SELECT DISTINCT prime_genre FROM applestore2;

/* QUESTION 2. Which is the genre with more apps rated? */
#SELECT * 
#FROM applestore2 
#ORDER BY rating_count_tot DESC 
#LIMIT 5;

/* QUESTION 3. Which is the genre with more apps? */
#SELECT prime_genre, COUNT(*) AS app_count_by_genre
#FROM applestore2
#GROUP BY prime_genre
#ORDER BY app_count_by_genre DESC
#LIMIT 5;

/* QUESTION 4. Which is the one with less? */
#SELECT prime_genre, COUNT(*) AS app_count_by_genre
#FROM applestore2
#GROUP BY prime_genre
#ORDER BY app_count_by_genre ASC
#LIMIT 5;

/* QUESTION 5. Take the 10 apps most rated. */
#SELECT track_name, rating_count_tot
#FROM applestore2
#ORDER BY rating_count_tot DESC
#LImit 10;

/* QUESTION 6. Take the 10 apps best rated by users. */
#SELECT track_name, user_rating, rating_count_tot
#FROM applestore2
#ORDER BY user_rating DESC, rating_count_tot DESC
#LImit 10;

/* QUESTION 7. Take a look on the data you retrieved 
in the question 5. Give some insights. */
#The most rated app in total is facebook, and intagram at 2. There are 4 
#games in the top 10, 2 music streaming services and a bible app.
#They are probably the apps with the most users/downloads.

/* QUESTION 8. Take a look on the data you retrieved in the question 6. 
Give some insights. */
#Most of the apps are games.

/* QUESTION 9. Now compare the data from questions 5 and 6. 
What do you see?*/
#Contrary to the data taken in question 5, in the data got on 6 
#we can say that having more 
#ratings does not necessarily mean that there will be better. 
#None os the top 10 apps by rating total is in the top 10 user rating.

/* QUESTION 10. How could you take the top 3 regarding 
the user ratings but also the number of votes? */
#SELECT track_name, user_rating_ver, rating_count_ver
#FROM applestore2
#ORDER BY user_rating_ver DESC, rating_count_ver DESC
#LImit 3;
#I choose the rating_ver and the count_ver. I assume its the 
#verefied users, but we could go for no _ver

/* QUESTION 11. Does people care about the price? 
Do some queries, comment why are you doing them and the 
results you retrieve. What is your conclusion?*/

SELECT track_name, rating_count_tot, user_rating, price
FROM applestore2
ORDER BY rating_count_tot DESC, user_rating DESC, price DESC
LIMIT 10;

#The most rated apps, assuming the most downloaded app, are free.

SELECT track_name, user_rating, rating_count_tot, price
FROM applestore2
ORDER BY user_rating DESC, rating_count_tot DESC, price DESC
LImit 10;

#The best and most rated apps are free, with some at max 2$

SELECT track_name, user_rating, rating_count_tot, price
FROM applestore2
WHERE price > 5
ORDER BY user_rating DESC, rating_count_tot DESC, price DESC
LImit 10;

#Getting the price at above 5$ we see a reduction on rating_count, assuming 
#downloaded apps.

#I would say that the app being paid does not affect its rating, 
#but drastically affect the amount of user it has.
