class Event < ApplicationRecord
  has_many :userevents
  has_many :attendees, through: :userevents, class_name: "User", :foreign_key => "user_id"
  has_many :eventgames
  has_many :games, through: :eventgames
  belongs_to :organizers, class_name: "User", :foreign_key => "user_id"
  has_many :notifications, dependent: :destroy
end
