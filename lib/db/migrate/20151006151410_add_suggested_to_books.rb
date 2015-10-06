class AddSuggestedToBooks < ActiveRecord::Migration
  def change
    add_column :books, :suggested, :boolean
  end
end
