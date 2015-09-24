class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :ISBN
      t.string :title
      t.text :description
      t.text :author
      t.string :status
      t.string :user

      t.timestamps null: false
    end
  end
end
