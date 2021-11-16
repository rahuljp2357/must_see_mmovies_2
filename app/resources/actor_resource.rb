class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :actor_name, :string
  attribute :dob, :date
  attribute :bio, :string
  attribute :image, :string

  # Direct associations

  has_many   :casts,
             foreign_key: :actors_id

  # Indirect associations

  has_many :directors do
    assign_each do |actor, directors|
      directors.select do |d|
        d.id.in?(actor.directors.map(&:id))
      end
    end
  end


  filter :director_id, :integer do
    eq do |scope, value|
      scope.eager_load(:directors).where(:movies => {:director_id => value})
    end
  end
end
