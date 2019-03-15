class UserTerm < ApplicationRecord
  belongs_to :user
  has_many :user_term_lists, dependent: :destroy
end
