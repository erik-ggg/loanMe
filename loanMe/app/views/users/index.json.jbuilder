json.array!(@users) do |user|
  json.extract! user, :id, :name, :surname, :mail, :phonenumber, :password
  json.url user_url(user, format: :json)
end
