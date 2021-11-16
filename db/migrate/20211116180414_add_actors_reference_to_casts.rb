class AddActorsReferenceToCasts < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :casts, :actors, column: :actors_id
    add_index :casts, :actors_id
    change_column_null :casts, :actors_id, false
  end
end
