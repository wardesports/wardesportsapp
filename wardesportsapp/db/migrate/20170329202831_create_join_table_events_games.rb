class CreateJoinTableEventsGames < ActiveRecord::Migration[5.0]
  def change
    create_table :eventgames do |t|
      t.references :game, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
