json.extract! user, :id, :user_name, :user_password, :user_mail, :user_role, :integer, :user_avatar, :created_at, :updated_at
json.url user_url(user, format: :json)
