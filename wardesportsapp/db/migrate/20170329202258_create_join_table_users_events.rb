class CreateJoinTableUsersEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :userevents do |t|
      t.references :user, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      t.references :organizer, index: true

      t.timestamps null: false
    end
  end
end
