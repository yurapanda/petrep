json.extract! boarding_booking, :id, :patient_id, :start_date, :end_date, :confirmed, :created_at, :updated_at
json.url boarding_booking_url(boarding_booking, format: :json)
