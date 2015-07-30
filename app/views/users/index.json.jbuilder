json.array!(@users) do |user|
  json.extract! user, :id, :user_name, :user_email, :response_type, :reviewer_email
  json.url user_url(user, format: :json)
end
