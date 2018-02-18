class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :version
      t.timestamps
    end
  end
end
