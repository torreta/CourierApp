json.array!(@rates) do |rate|
  json.extract! rate, :id, :creator_id, :constant, :value_bs
  json.url rate_url(rate, format: :json)
end
