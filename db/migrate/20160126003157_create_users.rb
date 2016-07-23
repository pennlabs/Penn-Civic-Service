class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :confirm_token
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :org_name
      t.string :org_url
      t.string :org_phone
      t.string :org_address
      t.string :city
      t.string :state
      t.string :zipcode
      t.timestamps null: false
      t.boolean :confirmed, default: false
    end
  end
end
