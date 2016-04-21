json.array!(@ideas_users) do |ideas_user|
  json.extract! ideas_user, :id, :roles_id, :user_id
  json.url ideas_user_url(ideas_user, format: :json)
end
