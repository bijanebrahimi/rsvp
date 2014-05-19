class AddDescriptionToEvents < ActiveRecord::Migration
  def change
    add_column :events, :description, :string, :null => true
    remove_column :events, :slug
  end
end
