class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.boolean :viewed
      t.string :message
      t.boolean :clicked
      t.references :user, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      t.references :organizer, index: true

      t.timestamps
    end
  end
end
