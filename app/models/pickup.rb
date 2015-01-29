class Pickup < ActiveRecord::Base
  belongs_to :retriever, class_name: "User"
  belongs_to :order

  def item
    self.order.item
  end

  def restaurant
    self.order.item.restaurant
  end

  def requestor
    self.order.requestor
  end

  def self.active
    Pickup.where(fulfilled: false)
  end

  def self.completed
    Pickup.where(fulfilled: true)
  end

  validates :retriever_id, :order_id, :presence => true

end
