json.array!(@stores) do |store|
  json.extract! store, :id, :index
  json.url store_url(store, format: :json)
end
