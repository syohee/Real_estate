class Product < ApplicationRecord
  belongs_to :type
  belongs_to :structure
  belongs_to :office
  has_many :images, dependent: :destroy
  has_many :product_terms, dependent: :destroy
  has_many :likeds, dependent: :destroy
  accepts_nested_attributes_for :images
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode if Product.new { |a| a.latitude_changed? or a.longitude_changed? }
  # attr_accessible :full_address, :latitude, :longitude
  
  geocoded_by :address 
  after_validation :geocode, :if => :address_changed? 
end
