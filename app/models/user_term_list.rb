class UserTermList < ApplicationRecord
  belongs_to :user_term
  belongs_to :term
end
