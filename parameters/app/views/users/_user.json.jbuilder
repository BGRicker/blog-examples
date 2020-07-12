json.extract! user, :id, :name, :email, :favorite_pizza_topping, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
