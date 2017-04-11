json.extract! patient, :id, :name, :user_id, :breed_id, :gender_id, :description, :created_at, :updated_at
json.url patient_url(patient, format: :json)
