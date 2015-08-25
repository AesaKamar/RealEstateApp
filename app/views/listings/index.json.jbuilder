json.array!(@listings) do |listing|
  json.extract! listing, :id, :town, :price, :style, :rooms, :bedrooms, :fullbaths, :halfbaths, :basement, :garage, :listdate, :category, :taxes, :remarks, :exterior, :hvac, :fireplace, :lotdescription, :addons, :yearbuilt
  json.url listing_url(listing, format: :json)
end
