json.extract! food, :id, :user_id, :name, :best_before, :expiry_date, :is_consumed, :created_at, :updated_at
json.url food_url(food, format: :json)
