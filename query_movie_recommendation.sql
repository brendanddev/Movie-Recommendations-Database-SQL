/*******************************************************
Script: query_movie_recommendation.sql
Author: Brendan Dileo
Date: September 2024
Description: Example of queries that can be executed in the Movie Recommendation Database
********************************************************/

USE movie_recommendation;

-- Displays all Genres.
SELECT *
FROM genres;

-- Displays all Movies.
SELECT *
FROM movies;

-- Displays all Users.
SELECT *
FROM users;

-- Displays all Ratings.
SELECT *
FROM ratings;

-- Display Movies published by Warner Bros.
SELECT movie_title 
FROM movies 
WHERE publishing_company = 'Warner Bros';

-- Displays Movie Titles in Ascending order without duplicates.
SELECT DISTINCT movie_title 
FROM movies 
ORDER BY movie_title ASC;

-- Displays the number of rows in the Movies table.
SELECT COUNT(*) AS total_rows
FROM movies;

-- Displays the Genre Names in Ascending order.
SELECT *
FROM genres 
ORDER BY genre_name ASC;

-- Displays the Movie Names and Movie Release Years that were released in 2012.
SELECT movie_title, movie_release_year 
FROM movies 
WHERE YEAR(movie_release_year) = '2012';

-- Displays the Top 5 Rated Movies.
SELECT TOP 5 movies.movie_title, ratings.movie_rating 
FROM ratings 
INNER JOIN movies ON ratings.movie_id = movies.movie_id
ORDER BY ratings.movie_rating DESC;

-- Displays the Average Rate the Movies have received.
SELECT AVG(movie_rating) AS rating_average
FROM ratings;
