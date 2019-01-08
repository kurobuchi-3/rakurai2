json.extract! event, :id, :id, :title, :description, :image_url, :price, :stock_quantity, :created_at, :updated_at
json.url event_url(event, format: :json)
