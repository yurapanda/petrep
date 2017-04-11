json.extract! invoice, :id, :user_id, :patient_id, :paid, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
