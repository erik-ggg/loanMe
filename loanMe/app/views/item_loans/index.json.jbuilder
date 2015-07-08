json.array!(@item_loans) do |item_loan|
  json.extract! item_loan, :id, :item_id, :user_id, :estimated_return_date
  json.url item_loan_url(item_loan, format: :json)
end
