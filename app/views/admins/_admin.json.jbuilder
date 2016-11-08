json.extract! admin, :id, :nome, :email, :senha, :created_at, :updated_at
json.url admin_url(admin, format: :json)