json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :url, :state, :user_id
  json.url item_url(item, format: :json)
end
