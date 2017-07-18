class Event < ApplicationRecord
  has_many :games, dependent: :destroy
  has_many :attendees, dependent: :destroy
  has_many :users, :through => :attendees
  belongs_to :organizer, foreign_key: :organizer_id, class_name: 'User'

  def address
    "#{address1} #{address2} #{city} #{state} #{postalcode}"
  end
end
