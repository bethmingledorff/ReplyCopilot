json.array!(@users) do |user|
  json.extract! user, :id, :user_name, :user_email, :customer_name
  json.url user_url(user, format: :json)
end
