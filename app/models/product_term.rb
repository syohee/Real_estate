class ProductTerm < ApplicationRecord
  belongs_to :product
  belongs_to :term
end
