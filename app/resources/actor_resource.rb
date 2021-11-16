class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :actor_name, :string
  attribute :dob, :date
  attribute :bio, :string
  attribute :image, :string

  # Direct associations

  # Indirect associations

end
