class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.string :email
      t.string :org_name
      t.string :org_url
      t.string :org_phone
      t.string :org_address
      t.string :city
      t.string :state
      t.string :zipcode
      t.timestamps null: false
    end
  end
end
