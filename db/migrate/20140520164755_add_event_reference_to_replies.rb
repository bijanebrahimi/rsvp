class AddEventReferenceToReplies < ActiveRecord::Migration
  def change
    remove_column :replies, :events_id
    add_column :replies, :event_id, :integer
    add_index :replies, :event_id
  end
end
