json.extract! person, :id, :first_name, :last_name, :document, :gender, :birth_date, :salary, :created_at, :updated_at
json.url person_url(person, format: :json)
