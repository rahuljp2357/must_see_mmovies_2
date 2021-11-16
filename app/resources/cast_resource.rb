class CastResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :character_id, :integer
  attribute :movie_id, :integer
  attribute :actors_id, :integer

  # Direct associations

  # Indirect associations

end