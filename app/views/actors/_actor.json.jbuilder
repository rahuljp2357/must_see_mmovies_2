json.extract! actor, :id, :actor_name, :dob, :bio, :image, :created_at,
              :updated_at
json.url actor_url(actor, format: :json)
