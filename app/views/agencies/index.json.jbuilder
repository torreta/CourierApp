json.array!(@agencies) do |agency|
  json.extract! agency, :id, :name, :phone, :address
  json.url agency_url(agency, format: :json)
end
