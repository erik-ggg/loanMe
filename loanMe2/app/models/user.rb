class User < ActiveRecord::Base
  has_many :items, dependent: :destroy
  has_many :item_requests, dependent: :destroy

  def request_item
    @item_request = ItemRequest.new
    @item_request.user_id = self.id
    @item_request.save
  end


end
