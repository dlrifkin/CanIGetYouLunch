class Restaurant < ActiveRecord::Base
  has_many :items
  has_many :orders, through: :items

  validates :name, presence: true, uniqueness: true
end
