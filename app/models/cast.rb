class Cast < ApplicationRecord
  # Direct associations

  belongs_to :movie

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    character.to_s
  end

end
