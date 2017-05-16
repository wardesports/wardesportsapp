class Game < ApplicationRecord
  belongs_to :event
  belongs_to :user
  belongs_to :organizer, foreign_key: :user_id, class_name: 'User'
end
