json.array!(@packages) do |package|
  json.extract! package, :id, :sender_id, :receiver_id, :sender_agency_id, :receiver_agency_id, :status, :dispatched_at, :delivered_at, :lenght, :width, :height, :weight
  json.url package_url(package, format: :json)
end
