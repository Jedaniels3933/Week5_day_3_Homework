use ecom;

CREATE TABLE albums(
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(25) NOT NULL,
artist_id VARCHAR(50) NOT NULL, 
genre_id VARCHAR(50) NOT NULL ,
release_year DATE NULL,
total_tracks INT NULL
); 

CREATE TABLE genre (
id INT AUTO_INCREMENT PRIMARY KEY,
genre_id INT NOT NULL,
genre_name VARCHAR(50) NOT NULL,
famous_decade DATE NOT NULL
);

CREATE TABLE artists(
id INT AUTO_INCREMENT PRIMARY KEY,
genre_name VARCHAR(50) NOT NULL,
artist_name VARCHAR(25) NOT NULL,
artist_dob DATE NULL
);

ALTER TABLE albums
ADD total_duration TIME;

ALTER TABLE artists             -- Added Artist id to artist table to estblish a link for FK
ADD artist_id INT;

ALTER TABLE artists
ADD FOREIGN KEY (artist_id) REFERENCES artists(id);  -- Established lnk with FK

ALTER TABLE genre
ADD FOREIGN KEY (genre_id) REFERENCES genre(id);