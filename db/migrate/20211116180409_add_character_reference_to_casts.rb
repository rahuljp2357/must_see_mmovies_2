class AddCharacterReferenceToCasts < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :casts, :characters
    add_index :casts, :character_id
    change_column_null :casts, :character_id, false
  end
end
