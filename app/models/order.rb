class Order < ActiveRecord::Base
  belongs_to :requestor, class_name: "User"
  belongs_to :item

  def restaurant
    self.item.restaurant
  end

  validates :requestor_id, :item_id, :presence => true
end
