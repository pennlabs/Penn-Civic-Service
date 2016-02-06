class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :date
      t.string :deadline
      t.string :time
      t.string :description
      t.string :location
      t.string :url
      t.string :tags
      t.timestamps null: false
    end
  end
end
