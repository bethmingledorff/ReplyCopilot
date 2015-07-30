json.array!(@replies) do |reply|
  json.extract! reply, :id, :greeting, :line_one, :line_two, :line_three, :line_four, :closing, :salutation
  json.url reply_url(reply, format: :json)
end
