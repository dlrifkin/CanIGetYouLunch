class Item < ActiveRecord::Base
  belongs_to :restaurant
  has_many :orders
  has_many :pickups

  validates :name, :category, :restaurant_id, presence: true

end
