class DirectorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :dob, :date
  attribute :bio, :string
  attribute :image, :string

  # Direct associations

  has_many :movies

  # Indirect associations

  has_many :actors do
    assign_each do |director, actors|
      actors.select do |a|
        a.id.in?(director.actors.map(&:id))
      end
    end
  end

  filter :actors_id, :integer do
    eq do |scope, value|
      scope.eager_load(:actors).where(casts: { actors_id: value })
    end
  end
end
