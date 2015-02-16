json.array!(@shops) do |shop|
  json.extract! shop, :id, :title, :description, :flavor, :address, :rating
  json.url shop_url(shop, format: :json)
end
