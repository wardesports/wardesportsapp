class CreateHostGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :host_groups do |t|
      t.references :user, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true
    end
  end
end
