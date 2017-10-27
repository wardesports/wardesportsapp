class AddColumnToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :group, index: true, foreign_key: true
  end
end
