json.array!(@criteria) do |criterium|
  json.extract! criterium, :id, :customer_name, :response_type, :responder_name, :responder_email
  json.url criterium_url(criterium, format: :json)
end
