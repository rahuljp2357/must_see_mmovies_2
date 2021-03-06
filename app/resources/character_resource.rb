class CharacterResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :character_name, :string
  attribute :movie_id, :integer

  # Direct associations

  has_many   :casts

  belongs_to :movie

  # Indirect associations
end
