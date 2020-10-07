json.extract! dependent, :id, :relationship, :d_name, :d_email, :d_contact, :d_blood_group, :d_date_of_birth, :weight, :height, :user_id, :created_at, :updated_at
json.url dependent_url(dependent, format: :json)
