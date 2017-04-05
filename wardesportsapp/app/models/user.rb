class User < ApplicationRecord
  has_many :userevents, dependent: :destroy
  has_many :events, through: :userevents
  has_many :usergames, dependent: :destroy
  has_many :games
  has_many :notifications, dependent: :destroy
end
