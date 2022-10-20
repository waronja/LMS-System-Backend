json.extract! course, :id, :name, :school_id, :student_id, :educator_id, :resource_id, :created_at, :updated_at
json.url course_url(course, format: :json)
