class User < ActiveRecord::Base
  has_many :items, dependent: :destroy
  has_many :item_requests
end
