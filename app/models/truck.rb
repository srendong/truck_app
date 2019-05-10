class Truck < ApplicationRecord
  belongs_to :user
  belongs_to :TruckType
  belongs_to :TruckMerchandise
  belongs_to :coverage
  belongs_to :city
end
