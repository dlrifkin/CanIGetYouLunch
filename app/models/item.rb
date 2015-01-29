class Item < ActiveRecord::Base
  belongs_to :restaurant
  has_many :orders
  has_many :pickups

  validates :name, :restaurant_id, presence: true

end
