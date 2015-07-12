class User < ActiveRecord::Base
  validates :name, :surname, :mail, :phonenumber, :password, presence: true
  validates :mail, :phonenumber, uniqueness: true
  has_many :items, dependent: :destroy
  has_many :friends, dependent: :destroy
  has_many :item_requests
end
