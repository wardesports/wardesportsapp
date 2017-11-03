class Member_Group < ApplicationRecord
belongs_to :member, foreign_key: :user_id, class_name: "User"
belongs_to :group
end
