class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, null: false, foreign_key: true

      t.string :first_name
      t.string :last_name
      t.string :nationality
      t.integer :ranking
      t.string :language
      t.integer :reports
      t.integer :abandons
      # t.boolean :positions, array: true,
      #                       default: [false,false,false,false,false]
      t.integer :carry
      t.integer :support
      t.integer :roamer
      t.integer :mid
      t.integer :offlaner
      t.integer :jungler

      t.timestamps null: false
    end
  end
end
