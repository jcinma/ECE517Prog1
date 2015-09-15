class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps null: false
    end
    add_index :members, :email, unique: true
  end
end
