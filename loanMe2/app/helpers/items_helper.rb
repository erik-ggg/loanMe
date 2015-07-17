module ItemsHelper

  def check_state(item)
     item.state ? 'Item in property' : 'Item loaned'
  end

  def request_item(item)
    @item_request = ItemRequest.new
    @item_request.user_id = item.user_id
    @item_request.item_id = item.id
    @item_request.save    
  end

end
