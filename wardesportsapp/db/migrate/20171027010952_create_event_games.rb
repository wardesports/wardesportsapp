class CreateEventGames < ActiveRecord::Migration[5.0]
  def change
    create_table :event_games do |t|
      t.references :event, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true
    end
  end
end
