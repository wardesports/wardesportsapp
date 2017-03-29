class User < ApplicationRecord
  has_many :userevents
  has_many :events, through: :userevents
  has_many :usergames
  has_many :games, through: :usergames
end
