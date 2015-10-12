class Animal < ActiveRecord::Base
  has_many :sightings
  has_many :regions, through: :sightings
end
