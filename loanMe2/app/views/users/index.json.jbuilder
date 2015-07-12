json.array!(@users) do |user|
  json.extract! user, :id, :nombre, :surname, :email, :phonenumber, :password
  json.url user_url(user, format: :json)
end
