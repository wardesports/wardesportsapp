class CreateJoinTableUsersGames < ActiveRecord::Migration[5.0]
  def change
    create_table :usergames do |t|
      t.references :game, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :organizer, index: true

      t.timestamps null: false
    end
  end
end
