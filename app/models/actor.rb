class Actor < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :casts,
             foreign_key: "actors_id",
             dependent: :destroy

  # Indirect associations

  has_many   :movies,
             through: :casts,
             source: :movie

  has_many   :directors,
             through: :movies,
             source: :director

  # Validations

  # Scopes

  def to_s
    actor_name
  end
end
