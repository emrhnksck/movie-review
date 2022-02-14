class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments
  has_many :movies
  has_many :favorite_movies # just the 'relationships'
  has_many :favorites, through: :favorite_movies, source: :movie
  acts_as_voter
end
