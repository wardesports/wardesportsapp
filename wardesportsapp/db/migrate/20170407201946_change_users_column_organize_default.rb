class ChangeUsersColumnOrganizeDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :organizer, false
  end
end
