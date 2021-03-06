class CreateEventCategories < ActiveRecord::Migration
  def change
    create_table :event_categories do |t|
      t.integer :event_id
      t.integer :category_id
      t.timestamps
    end

    add_index :event_categories, :event_id
    add_index :event_categories, :category_id
  end
end