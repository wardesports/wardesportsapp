class Event < ApplicationRecord
  has_many :games, dependent: :destroy
  has_many :attendees, foreign_key: :attendees_id, class_name: 'User', dependent: :destroy
  belongs_to :organizer, foreign_key: :organizer_id, class_name: 'User'
end
