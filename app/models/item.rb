class Item < ActiveRecord::Base
  belongs_to :restaurant
  has_many :orders
  has_many :pickups

  validates :name, presence: true
  validates :category, presence: true
  validates :restaurant_id, presence: true

end
