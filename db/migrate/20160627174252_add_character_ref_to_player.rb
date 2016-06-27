class AddCharacterRefToPlayer < ActiveRecord::Migration
  def change
    add_reference :players, :character, index: true, null: false, foreign_key: true
  end
end
