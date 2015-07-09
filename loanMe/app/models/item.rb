class Item < ActiveRecord::Base
  validates :name, :description, presence: true
  belongs_to :user
  has_many :item_requests
end
