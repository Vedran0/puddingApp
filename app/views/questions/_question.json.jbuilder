json.extract! question, :id, :text, :answer, :date_available, :created_at, :updated_at
json.url question_url(question, format: :json)
