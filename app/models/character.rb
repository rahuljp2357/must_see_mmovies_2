class Character < ApplicationRecord
  # Direct associations

  has_many   :casts,
             :dependent => :destroy

  belongs_to :movie

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    character_name
  end

end
