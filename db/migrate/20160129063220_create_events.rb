class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :link
      t.string :title
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.text :intro
      t.timestamps
    end
  end
end