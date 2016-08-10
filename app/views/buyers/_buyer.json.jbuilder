json.extract! buyer, :id, :name, :user_id, :created_at, :updated_at
json.url buyer_url(buyer, format: :json)