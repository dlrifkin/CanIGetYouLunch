class User < ActiveRecord::Base
  has_secure_password
  has_many :orders
  has_many :pickups

  validates :user_name, presence: true
  validates :email, presence: true

  # Remember to create a migration!
end
