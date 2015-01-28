class User < ActiveRecord::Base
  has_secure_password
  has_many :orders, foreign_key: :requestor_id
  has_many :pickups, foreign_key: :retriever_id

  validates :user_name, :email, :presence => true

  # Remember to create a migration!
end
