class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :base_stat
      t.boolean :ranged

      t.timestamps null: false
    end
  end
end
