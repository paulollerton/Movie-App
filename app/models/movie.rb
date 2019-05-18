class Movie < ApplicationRecord

  validates :title, presence: :true
  validates :year, numericality: { greater_than: 1900 }
  validates :director, length: { minimum: 2 }
  validates :plot, presence: :true

end
