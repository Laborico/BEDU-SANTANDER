CREATE DATABASE IF NOT EXISTS bedu_test;

USE bedu_test;

CREATE TABLE IF NOT EXISTS users(
	id INT PRIMARY KEY,
    genero CHAR(1),
    edad INT,
    ocupacion INT,
    cp VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS movies(
	id_movie INT PRIMARY KEY,
    nombre VARCHAR(100),
    genero VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS ratings(
	id_user INT,
    id_movie INT,
    rating INT,
    time_stamp BIGINT,
    FOREIGN KEY (id_user)  REFERENCES users(id),
    FOREIGN KEY (id_movie)  REFERENCES movies(id_movie)
);