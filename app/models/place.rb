class Place < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name, :address
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
