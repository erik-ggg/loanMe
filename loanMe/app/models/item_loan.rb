class ItemLoan < ActiveRecord::Base
  validates :estimated_return_date, presence: true
  has_one :item_requests
end
