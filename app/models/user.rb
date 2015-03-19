class User < ActiveRecord::Base
  # Favorite
  has_many :favorites, dependent: :destroy
  has_many :drivers,  through: :favorites

  # History
  has_many :histories
  has_many :drivers,  through: :histories

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
