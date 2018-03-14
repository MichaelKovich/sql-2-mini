CREATE TABLE Movie (
  ID INTEGER PRIMARY KEY,
  Title TEXT,
  MediaTypeId INTEGER, 
  FOREIGN KEY(MediaTypeId) REFERENCES MediaType(MediaTypeId)
);

INSERT INTO Movie ( Title, MediaTypeId ) VALUES ( "Aladdin", 3 );

SELECT * FROM Movie;

ALTER TABLE MOVIE
ADD COLUMN GenreId INTEGER REFERENCES Genre(GenreId);

SELECT * FROM Movie;

UPDATE Movie SET GenreId = 22 WHERE id = 1;
SELECT * FROM Movie;

SELECT al.title, ar.Name 
FROM Album al 
JOIN Artist ar ON al.ArtistId = ar.ArtistId;

SELECT * FROM Track 
WHERE GenreId IN ( SELECT GenreId FROM Genre WHERE Name = 'Jazz' OR Name = 'Blues' );

UPDATE Employee SET Phone = null WHERE EmployeeId = 1;
SELECT * FROM Employee WHERE EmployeeId = 1;

SELECT * from Customer WHERE Company IS null;

SELECT ar.artistId, ar.name, count(*)
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId 
GROUP BY ar.artistId
ORDER BY COUNT(*) DESC;

SELECT DISTINCT Country FROM Customer;

SELECT * FROM Customer WHERE Fax IS null;
DELETE FROM Customers WHERE Fax IS null;