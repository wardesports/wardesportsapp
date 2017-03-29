class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :email
      t.text :description
      t.string :password_digest
      t.string :organization_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :postalcode
      t.boolean :admin
      t.boolean :organizer

      t.timestamps
    end
  end
end
