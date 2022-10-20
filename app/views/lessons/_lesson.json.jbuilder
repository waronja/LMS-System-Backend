json.extract! lesson, :id, :name, :chat_id, :assessment_id, :phase_id, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
