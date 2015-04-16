json.array!(@products) do |product|
  json.extract! product, :id, :caterer_name, :product_title, :description, :image_url, :cuisine, :price
  json.url product_url(product, format: :json)
end
