class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string:name,null: false
      t.timestamps
    end% rails g model room
  end
end
