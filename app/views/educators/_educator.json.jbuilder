json.extract! educator, :id, :first_name, :last_name, :email, :password_digest, :school_id, :isadmin, :created_at, :updated_at
json.url educator_url(educator, format: :json)
