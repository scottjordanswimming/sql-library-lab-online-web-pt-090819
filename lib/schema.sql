CREATE TABLE characters (id INTEGER PRIMARY KEY, name TEXT, motto TEXT, species TEXT, author_ID INTEGER);
CREATE TABLE books (id INTEGER PRIMARY KEY, title TEXT, year DATE, series_ID INTEGER);
CREATE TABLE series (id INTEGER PRIMARY KEY, title TEXT, author_ID INTEGER, subgenre_ID INTEGER);
CREATE TABLE authors (id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE subgenres (id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE character_books (id INTEGER PRIMARY KEY, character_id INTEGER, book_id INTEGER);
