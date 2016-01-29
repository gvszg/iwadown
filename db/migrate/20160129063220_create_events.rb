class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :link
      t.string :title
      t.string :start_date_time
      t.string :end_date_time
      t.text :intro
      t.timestamps
    end
  end
end
