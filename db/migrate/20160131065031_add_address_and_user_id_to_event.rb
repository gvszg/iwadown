class AddAddressAndUserIdToEvent < ActiveRecord::Migration
  def change
    add_column :events, :address, :string
    add_column :events, :user_id, :integer
    add_index :events, :user_id
  end
end