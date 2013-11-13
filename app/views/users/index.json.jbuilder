json.array!(@users) do |user|
  json.extract! user, :email, :name, :password_digest, :admin
  json.url user_url(user, format: :json)
end
