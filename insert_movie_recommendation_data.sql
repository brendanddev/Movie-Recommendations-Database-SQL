/*******************************************************
Script: insert_movie_recommendation_data.sql
Author: Brendan Dileo
Date: September 2024
Description: Inserting sample data into the Movie Recommendation Database
********************************************************/

-- Forces the use of the Movie Recommendation databse.
USE movie_recommendation;

/* Inserts the names of the genres as data into the genres table in the 'genre_name' column */
INSERT INTO genres (genre_name)
VALUES /* Specifies which values are being added to the table */
	('Thriller'),
	('Comedy'),
	('Romance'),
	('Dramedy'),
	('Drama'),
	('History'),
	('RomCom'),
	('Horror'),
	('Sci Fi'),
	('Action'),
	('Western'),
	('Animation'),
	('Adventure'),
	('War'),
	('Musical');

/* Inserts movie information as data into the movies table */
INSERT INTO movies (movie_title, movie_release_year, director, publishing_company, genre_id) /* Specifies the data being added and to which column */
VALUES
	('Batman Begins', '2005-06-15', 'Christopher Nolan', 'Warner Bros', 100),
	('Sonic the Hedgehog', '2020-02-14', 'Jeff Fowler', 'Paramount Pictures', 111),
	('The Dark Knight', '2008-07-18', 'Christopher Nolan', 'Warner Bros', 100),
	('The Perks of Being a Wallflower', '2012-09-21', 'Stephen Chbosky', 'Summit Entertainment', 103),
	('The Dark Knight Rises', '2012-07-20', 'Christopher Nolan', 'Warner Bros', 100),
	('Ted', '2012-06-29', 'Seth MacFarlane', 'Universal Pictures', 101),
	('Ted 2', '2015-06-26', 'Seth MacFarlane', 'Universal Pictures', 101),
	('Madagascar', '2005-05-27', 'Eric Darnell', 'DreamWorks Animation', 111),
	('Goodfellas', '1990-09-19', 'Martin Scorsese', 'Warner Bros', 100),
	('Fight Club', '1999-10-15', 'David Fincher', '20th Century Fox', 100),
	('Gone Girl', '2014-10-03', 'David Fincher', '20th Century Fox', 100),
	('Memento', '2000-10-11', 'Christopher Nolan', 'Newmarket Films', 100),
	('Inception', '2010-07-16', 'Christopher Nolan', 'Warner Bros', 100);

/* Inserts example user information as data into the users table */
INSERT INTO users (username, email) /* Specifies which columns the data will be inserted into */
VALUES
	('exampleUserOne', 'exampleuser@hotmail.com'), /* Example data for demonstration purposes */
	('exampleUserTwo', 'exampleuserTwo@yahoo.ca'),
	('exampleUserThree', 'exampleuserThree@gmail.com');

/* Inserts example ratings into the ratings table */
INSERT INTO ratings (user_id, movie_id, movie_rating, review)
VALUES
    (1, 1, 9, 'A fantastic reboot that explores the depths of Bruce Wayne’s character.'),
    (1, 2, 7, 'A fun and engaging adaptation of the beloved video game.'),
    (2, 3, 10, 'One of the best superhero movies ever made! The Joker is mesmerizing.'),
    (2, 4, 8, 'A heartfelt coming-of-age story with relatable characters.'),
    (3, 5, 9, 'An epic conclusion to the Dark Knight trilogy with high stakes.'),
    (3, 6, 8, 'Hilarious and charming, Ted brings a unique twist to the buddy comedy.'),
    (1, 7, 7, 'Ted 2 is fun, but not as fresh as the first.'),
    (1, 8, 8, 'A delightful adventure that appeals to both kids and adults.'),
    (2, 9, 10, 'A classic mob film with brilliant performances.'),
    (2, 10, 9, 'A dark and thought-provoking narrative that keeps you guessing.'),
    (3, 11, 9, 'A gripping story with an innovative plot structure.'),
    (3, 12, 10, 'Mind-bending and visually stunning; a masterpiece by Nolan.');




