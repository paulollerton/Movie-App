class Movie < ApplicationRecord

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  validates :title, presence: :true
  validates :year, numericality: { greater_than: 1900 }
  validates :director, length: { minimum: 2 }
  validates :plot, presence: :true

end
