use `movierental`;
/* 1. Write and execute a query to display all columns of the Movie table. */

describe Movie;

/* 2. Write and execute a query to display movie ids and titles in reverse chronological order of their year of release. */

select movie_id as ID, title as Movie_Name, year as ReleaseYear 
from Movie order by year desc;

/* 3.Write and execute a query to display the titles of all movies released before or during the year 2003. */

select title, year from Movie 
where year <= '2003';

/* 4. Write and execute a query to display the IDs and titles of drama or horror movies, 
making sure that a given movie appears only once.*/

select distinct Movie.movie_id, Movie.title, Genre.name from Movie 
inner join MovieGenre
on Movie.movie_id = MovieGenre.movie_id
inner join Genre
on MovieGenre.genre_id = Genre.genre_id
where Genre.name = "Drama" or Genre.name = "Horror";

/* 5. Write and execute a query to display the title and year of movies released before 2000 or after 2010, sorted in chronological order.*/

select title, year from Movie
where year <'2000' or year>'2010' order by year asc;

/* 6. Write and execute a query to display the title and year of movies released in any year other than 2003, 
sorted in reverse chronological order.*/

select title, year from Movie 
where year != '2003' order by year desc;

/* 7. Write and execute a query to display movie genres and the number of movies that belong to each genre.*/

select count(Mogen.movie_id) as Num_Of_Movies, Genre.name as Genre, Genre.genre_id as GenreID
from MovieGenre Mogen
inner join Genre
where Mogen.genre_id = Genre.genre_id
group by Genre.genre_id;

/*8.  Write and execute a query to display the first and last names of all customers 
that have rented the movie ‘Lord of the rings: the fellowship of the ring’ at some point in time.*/

select cus.first_name as FirstName, cus.last_name as LastName from Customer cus
inner join Rental on Rental.membership_id = cus.membership_id
inner join Video on Video.video_id = Rental.video_id
inner join Movie on Movie.movie_id = Video.movie_id
where Movie.title = "Lord of the rings: the fellowship of the ring";

/* 9. Write a query to display the membership IDs and names of customers who have at least one 
outstanding rental (i.e., at least one rental that has not yet been returned).*/

select cus.membership_id as ID, cus.first_name as FirstName, cus.last_name as LastName from Customer cus
inner join Rental on Rental.membership_id = cus.membership_id
where check_in_date is null;


/* 10. Write and execute a query to find movies that have more than one director and 
that have more than one genre. Please display the movie title and director name without duplicates.*/

select distinct a.title,e.first_name as FirstName,e.last_name as LastName , c.name "genre"  
from Movie a
inner join  MovieGenre b on a.movie_id=b.movie_id
inner join Genre c on c.genre_id=b.genre_id
inner join MovieDirector d on d.movie_id=a.movie_id
inner join Director e on e.director_id=d.director_id
group by (e.first_name) 
having count(c.name)>1;

select distinct a.title,e.first_name as FirstName,e.last_name as LastName , c.name "genre"  
from Movie a, MovieGenre b,Genre c , MovieDirector d,Director e
where a.movie_id=b.movie_id and c.genre_id=b.genre_id and d.movie_id=a.movie_id and
e.director_id=d.director_id
group by (e.first_name) 
having count(c.name)>1;


/* 11. Write and execute a statement to add a national column with VARCHAR data type (max 50 chars)
 to the Actor table (for example, the column value should be 'American' for an American actor).*/
 alter Table Actor add national Varchar(50);
 
 /* 12. Write and execute a statement to insert rows to the Actor so that the Actor table has the following data: */
 insert into Actor(actor_id,first_name,last_name, national)
 values
 (1, "Will", "Smith", "French"),
 (2,"Tom", "Hanks", "French"),
 (3,"Leonardo", "DiCaprio", "French"),
 (4, "Angelina","Jolie","French"),
 (5, "Marilyn", "Monroe","French");

 /*13.  Write and execute a statement to update the national column value of all these actors.
 For example, the famous actor Will Smith has a national column value 'American'*/
 update Actor set national = "American" where actor_id  in (1,2,3,4,5);
 
