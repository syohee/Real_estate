class Office < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable
  validates :name, presence: true, length: {maximum: 30}
  validates :email, presence: true, length: {maximum: 255}, format: { with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true
  before_validation { email.downcase! }
end