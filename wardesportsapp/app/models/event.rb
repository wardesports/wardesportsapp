class Event < ApplicationRecord
  has_many :userevents
  has_many :users, through: :userevents
  has_many :eventgames
  has_many :games, through: :eventgames
  has_many :organizers
  has_many :notifications, dependent: :destroy
end
