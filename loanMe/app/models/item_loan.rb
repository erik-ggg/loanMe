class ItemLoan < ActiveRecord::Base
  has_one :item_requests
end
