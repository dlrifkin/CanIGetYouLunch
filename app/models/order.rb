class Order < ActiveRecord::Base
  belongs_to :requestor, class_name: "User"
  belongs_to :item
  has_one :pickup

  def restaurant
    self.item.restaurant
  end

  def self.unclaimed
    Order.select {|o| !o.pickup}
  end

  def self.claimed
    Order.select {|o| o.pickup}
  end

  def self.completed
    Pickup.completed.map {|p| p.order}
  end

  validates :requestor_id, :item_id, :presence => true
end
