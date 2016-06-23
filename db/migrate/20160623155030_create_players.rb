class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :profiles, index: true, foreign_key: true
      t.references :games, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
