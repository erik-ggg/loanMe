class User < ActiveRecord::Base
  validates :name, :surname, :mail, :phonenumber, :password, presence: true
  has_many :items, dependent: :destroy
  has_many :item_requests
end
