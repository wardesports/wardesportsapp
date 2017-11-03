class Host_Group < ApplicationRecord
belongs_to :host, foreign_key: :user_id, class_name: "User"
belongs_to :group
end
