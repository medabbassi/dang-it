json.extract! user_reg, :id, :username, :email, :created_at, :updated_at
json.url user_reg_url(user_reg, format: :json)
