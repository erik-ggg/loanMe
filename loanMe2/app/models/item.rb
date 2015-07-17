class Item < ActiveRecord::Base
  belongs_to :user
  has_many :item_requests, dependent: :destroy

  def request
    @item_request = ItemRequest.new
    @item_request.user_id = self.user_id
    @item_request.item_id = self.id
    @item_request.save
  end

end
