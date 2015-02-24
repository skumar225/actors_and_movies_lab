class Actor < ActiveRecord::Base
  has_many :actor_movies, dependent: :destroy
  has_many :movies, through: :actor_movies
end
