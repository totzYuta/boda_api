class Driver < ActiveRecord::Base
  # Favorite 
  has_many :favorites
  has_many :users, through: :favorites

  # History
  has_many :histories
  has_many :users, through: :histories
end
