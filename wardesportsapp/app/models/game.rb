class Game < ApplicationRecord
  has_many :event_games
  has_many :events, through: :event_games, source: :event

end
