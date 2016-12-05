class CauseTypeToText < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.change :cause_type, :text
    end
  end

  def self.down
    change_table :events do |t|
      t.change :cause_type, :string
    end
  end
end
