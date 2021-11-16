class Actor < ApplicationRecord
  # Direct associations

  has_many   :casts,
             :foreign_key => "actors_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    actor_name
  end

end
