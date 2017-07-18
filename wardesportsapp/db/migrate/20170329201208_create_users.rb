class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :organization_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :postalcode
      t.boolean :admin, :default => false
      t.boolean :organizer, :default => false

      t.timestamps
    end
  end
end
