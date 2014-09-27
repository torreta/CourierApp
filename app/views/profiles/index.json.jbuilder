json.array!(@profiles) do |profile|
  json.extract! profile, :id, :role, :cedula, :name, :lastname, :phone, :address, :agency_id, :user_id
  json.url profile_url(profile, format: :json)
end
