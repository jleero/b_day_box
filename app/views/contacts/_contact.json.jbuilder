json.extract! contact, :id, :first_name, :last_name, :age_type, :gender, :street_address, :city, :state, :zip_code, :user_id, :nickname, :relation, :created_at, :updated_at
json.url contact_url(contact, format: :json)
