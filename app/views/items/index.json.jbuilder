json.array!(@items) do |item|
  json.extract! item, 
  json.url item_url(item, format: :json)
end
