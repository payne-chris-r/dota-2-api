class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.references  :user,
                    index: { unique: true },
                    null: false,
                    foreign_key: true
      t.string :created_by, null: false, foreign_key: true
      t.timestamps null: false
    end
  end
end
