class Location < ApplicationRecord
  belongs_to :trip
  has_many :address, dependent: :destroy
end
