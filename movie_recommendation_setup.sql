/*******************************************************
Script: movie_recommendation_db.sql
Author: Brendan Dileo
Date: September 2024
Name: Movie Recommendation Database
Description: Creating a Database that will hold Movie Recommendations.
Four tables are created holding the possible movie genres, the movies themselves, the users, and ratings.
********************************************************/

CREATE DATABASE movie_recommendation; /* Creates the database */
USE movie_recommendation; /* Forces use of the database */

/* Creates a table representing movie genres with columns representing the genre id and the name of the genre */
CREATE TABLE genres ( 
	genre_id INT IDENTITY(100, 1) NOT NULL,
	genre_name VARCHAR(25) NOT NULL

	CONSTRAINT PK_genre_id PRIMARY KEY (genre_id) /* Primary key is assigned to the id column */
);

/* Creates a table representing movies with columns for various attributes of a movie */
CREATE TABLE movies (
	movie_id INT IDENTITY(1, 1) NOT NULL,
	movie_title VARCHAR(100) NOT NULL,
	movie_release_year DATE NOT NULL,
	director VARCHAR(100) NOT NULL,
	publishing_company VARCHAR(100) NOT NULL,
	genre_id INT,

	CONSTRAINT PK_movie_id PRIMARY KEY (movie_id), /* Primary key for this table is assigned to the movie id column */
	CONSTRAINT CK_valid_release_year CHECK (movie_release_year <= GETDATE()), /* Check constraint to make sure the movies release date is accurate */
	CONSTRAINT FK_genre_id FOREIGN KEY (genre_id) /* Foreign Key for this table is the genre id (Primary Key) from the genres table */
	REFERENCES genres (genre_id) /* References the genres table creating a relationship between the two tables */
);

/* Creates a table representing users of the movie recommendation application */ 
CREATE TABLE users (
	user_id INT IDENTITY NOT NULL,
	username VARCHAR(50) NOT NULL UNIQUE,
	email VARCHAR(50) NOT NULL UNIQUE,
	creation_date DATE DEFAULT GETDATE(),

	CONSTRAINT PK_user_id PRIMARY KEY (user_id) /* Primary Key for this table is the user id column */
);

/* Creates a table representing movie ratings */ 
CREATE TABLE ratings (
	rating_id INT IDENTITY NOT NULL,
	user_id INT NOT NULL,
	movie_id INT,
	movie_rating INT,
	review TEXT,

	CONSTRAINT PK_rating_id PRIMARY KEY (rating_id), /* Primary Key for this table is the rating id cilumn */
	CONSTRAINT CK_movie_rating CHECK (movie_rating >= 1 AND movie_rating <= 10), /* Check constraint ensures the movie rating is between 1 and 10 inclusive */
	CONSTRAINT FK_user_id FOREIGN KEY (user_id) /* Foreign Key for this table is the user id column which references the users table */
	REFERENCES users (user_id) /* References The 'users' table user id column as the Foreign Key setting up a relationship.
);