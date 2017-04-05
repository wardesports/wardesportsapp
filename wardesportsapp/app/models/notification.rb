class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :organizer, class_name: "User"
end
