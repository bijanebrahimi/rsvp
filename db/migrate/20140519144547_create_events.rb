class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user, :null => false
      t.string     :slug, :null => false
      t.string     :name, :null => false
      t.datetime   :due_date, :null => false
      t.boolean    :confirmation, :null => false, :default => false

      t.timestamps
    end
  end
end
