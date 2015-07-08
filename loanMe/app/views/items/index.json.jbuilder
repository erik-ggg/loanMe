json.array!(@items) do |item|
  json.extract! item, :id, :user_id, :name, :description, :url, :state
  json.url item_url(item, format: :json)
end
