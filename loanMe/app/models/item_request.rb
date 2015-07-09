class ItemRequest < ActiveRecord::Base
  validates :date_request, :estimated_return_date, presence: true
  belongs_to :user
  belongs_to :item
end
