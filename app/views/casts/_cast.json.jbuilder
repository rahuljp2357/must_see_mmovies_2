json.extract! cast, :id, :character_id, :movie_id, :actors_id, :created_at,
              :updated_at
json.url cast_url(cast, format: :json)
