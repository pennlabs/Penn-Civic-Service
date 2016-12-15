class ChangeDescriptionToText < ActiveRecord::Migration
  def up
    change_column :events, :description, :text
  end

  def down
    # This might cause trouble if strings are longer
    # than 255 characters.
    change_column :events, :description, :string
  end
end
