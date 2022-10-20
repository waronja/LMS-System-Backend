json.extract! student, :id, :first_name, :last_name, :email, :password_digest, :school_id, :isadmin, :created_at, :updated_at
json.url student_url(student, format: :json)
