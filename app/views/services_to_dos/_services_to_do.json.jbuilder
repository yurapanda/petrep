json.extract! services_to_do, :id, :service_id, :done, :created_at, :updated_at
json.url services_to_do_url(services_to_do, format: :json)
