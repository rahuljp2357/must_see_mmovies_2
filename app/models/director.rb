class Director < ApplicationRecord
  # Direct associations

  has_many   :movies,
             :dependent => :destroy

  # Indirect associations

  has_many   :actors,
             :through => :movies,
             :source => :actors

  # Validations

  # Scopes

  def to_s
    name
  end

end
