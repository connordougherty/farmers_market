json.extract! storefront, :id, :name, :info, :user_id, :created_at, :updated_at
json.url storefront_url(storefront, format: :json)