class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable
  mount_uploader :profile, ProfileUploader
  has_many :user_terms, dependent: :destroy
  has_many :likeds, dependent: :destroy
end
