class Driver < ActiveRecord::Base
  # Favorite 
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites

  # History
  has_many :histories
  has_many :users, through: :histories

  def favorited_by? user
    favorites.where(user_id: user.id).exists?
  end
end
