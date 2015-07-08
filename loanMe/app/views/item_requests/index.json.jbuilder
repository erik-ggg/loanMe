json.array!(@item_requests) do |item_request|
  json.extract! item_request, :id, :item_id, :user_id, :date_request, :estimated_return_date
  json.url item_request_url(item_request, format: :json)
end
