class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :start
      t.datetime :end
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :postalcode
      t.string :website
      t.text :links
      t.string :type

      t.timestamps
    end
  end
end
