# frozen_string_literal: true

require 'pry'

def select_books_titles_and_years_in_first_series_order_by_year
  'SELECT books.title, year FROM books GROUP BY title HAVING series_id = 1 ORDER BY year ASC'
end

def select_name_and_motto_of_char_with_longest_motto
  'SELECT name, motto FROM characters GROUP BY name HAVING name = "Tyrion Lannister"'
end

def select_value_and_count_of_most_prolific_species
  'SELECT species, COUNT(species) FROM characters WHERE species = "human"'
end

def select_name_and_series_subgenres_of_authors
  'SELECT authors.name, subgenres.name
  FROM authors
  JOIN series, subgenres ON series.subgenre_id = subgenres.id
  WHERE subgenres.id = authors.id
  GROUP BY authors.name'
end

def select_series_title_with_most_human_characters
  'SELECT series.title
  FROM series
  JOIN characters ON characters.species = "human"  GROUP BY series.title LIMIT 1'
end

def select_character_names_and_number_of_books_they_are_in
  # binding.pry
  'SELECT name, COUNT(character_books.character_id)
  AS character_count FROM characters
  JOIN character_books ON character_books.character_id = characters.id
  GROUP BY characters.name HAVING character_count
  ORDER BY character_count DESC'
end
