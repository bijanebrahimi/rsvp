class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.references :events
      t.string :email, :null=>false
      t.integer :status, :null=>false
      t.string :confirmation_code, :null=>false
      t.boolean :confirmed, :default=>false, :null=>false

      t.timestamps
    end
    add_index :replies, :email, :unique=>true
    add_index :replies, :confirmation_code, :unique=>true
  end
end
