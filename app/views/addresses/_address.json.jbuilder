json.extract! address, :id, :lat, :long, :country, :street, :city, :state, :zip, :location_id, :created_at, :updated_at
json.url address_url(address, format: :json)
