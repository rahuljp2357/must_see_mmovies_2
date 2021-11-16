class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  has_many   :characters,
             :dependent => :destroy

  has_many   :casts,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    title
  end

end
