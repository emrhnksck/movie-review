class Movie < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :comments
  has_many :favorite_movies # just the 'relationships'
  has_many :favorited_by, through: :favorite_movies, source: :movie
  acts_as_votable


end
