json.extract! user, :id, :user_name, :email, :contact, :country, :date_of_birth, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
