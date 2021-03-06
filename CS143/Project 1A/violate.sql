-- Three Primary Key Constraint Violations

-- Duplicate primary key: "272" in Movie Table
INSERT INTO Movie VALUES (272, 'Duplicate of Baby Take a Bow', 1934, NULL, NULL);

-- Duplicate primary key: "1" in Actor Table
INSERT INTO Actor VALUES (1, NULL, NULL, NULL, 19750525, NULL);

-- Duplicate primary key: "37146" in Director Table
INSERT INTO Director VALUES (37146, NULL , NULL, 19521112, NULL);


-- Six Referential Integrity Constraint Violations

-- Inserting invalid Movie.id: "4751" for MovieActor.mid
INSERT INTO MovieActor VALUES (4751, 1, NULL);

-- Inserting invalid Actor.id: "69001" for MovieActor.aid
INSERT INTO MovieActor VALUES(272, 69001, NULL);

-- Inserting invalid Movie.id: "4751" for MovieDirector.mid
INSERT INTO MovieDirector VALUES(4751, 37146);

-- Inserting invalid Director.id: "69001" for MovieDirector.did
INSERT INTO MovieDirector VALUES(272, 69001);

-- Inserting invalid Movie.id: "4751" for Review.mid
INSERT INTO Review VALUES(NULL, NULL, 4751, 5, NULL);

-- Inserting invalid Movie.id: "4751" for MovieGenre.mid
INSERT INTO MovieGenre VALUES(4751, 'Drama');


-- 3 Check Constraint Violations

-- MovieRating.imdb: "-1" is not between 0 and 100 
INSERT INTO MovieRating VALUES(272, -1, 100);

-- MovieRating.rot: "-1" is not between 0 and 100
INSERT INTO MovieRating VALUES(272, 100, -1);

-- Movie.rating: "INVALID_RATING" is not null, G, PG, PG-13, R, or NC-17
INSERT INTO Movie VALUEs (4751, 'Some Title', 2017, 'INVALID_RATING', NULL);
