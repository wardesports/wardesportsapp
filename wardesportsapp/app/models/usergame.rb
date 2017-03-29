class Usergame < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :organizer, class_name: "User"
end
