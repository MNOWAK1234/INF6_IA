CREATE TABLE books (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50),
    author VARCHAR(20),
    genre VARCHAR(20)
) DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

INSERT INTO books (title, author, genre) VALUES
('Wiedźmin', 'Andrzej Sapkowski', 'Fantasy'),
('Lśnienie', 'Stephen King', 'Horror'),
('Zabójstwo Rogera Ackroyda', 'Agatha Christie', 'Kryminał');

CREATE TABLE users (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password CHAR(40) NOT NULL,
    group_id INT(11) NOT NULL,
    created DATETIME,
    modified DATETIME
);

CREATE TABLE groups (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created DATETIME,
    modified DATETIME
);
