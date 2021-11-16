class CreateCasts < ActiveRecord::Migration[6.0]
  def change
    create_table :casts do |t|
      t.integer :character_id
      t.integer :movie_id
      t.integer :actors_id

      t.timestamps
    end
  end
end
