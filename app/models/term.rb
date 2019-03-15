class Term < ApplicationRecord
  has_many :user_term_lists
  has_many :product_terms
end
