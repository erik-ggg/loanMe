class ItemLoan < ActiveRecord::Base
  validates :item_id, :user_id, :estimated_return_date, presence: true
  has_one :item_requests
end
