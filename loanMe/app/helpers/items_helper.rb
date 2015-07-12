module ItemsHelper
  def get_item_name_bu(user)
     @item = Item.find(:user_id, user.id)
     return @item.name
  end
end
