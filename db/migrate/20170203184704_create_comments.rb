class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :commentable, polymorphic: true, index: true
      t.references :profile, index: true, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
