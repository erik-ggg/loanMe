module ItemsHelper

  def check_state(item)
     item.state ? 'Item in property' : 'Item loaned'
  end
  
end
