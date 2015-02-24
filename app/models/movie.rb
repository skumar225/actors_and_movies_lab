class Movie < ActiveRecord::Base
  has_many :actor_movies, dependent: :destroy
  has_many :actors, through: :actor_movies
end
