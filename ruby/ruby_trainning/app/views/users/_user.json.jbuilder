json.extract! user, :id, :name, :email, :password_digest, :role, :deleted_at, :created_at, :updated_at
json.url user_url(user, format: :json)
