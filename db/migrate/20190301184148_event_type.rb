class EventType < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :type, :string
    add_column :events, :event_type, :string
  end
end
