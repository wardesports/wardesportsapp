class Event < ApplicationRecord
  has_many :games, dependent: :destroy
  has_many :attendees, foreign_key: :attendee_id, class_name: 'User'
  has_many :users, :through => :attendees
  belongs_to :group

  geocoded_by :address
  after_validation :geocode

  def address
    "#{address1}, #{address2}, #{city}, #{state}, #{postalcode}"
  end

  def start_time
   time = start
   time.in_time_zone('Eastern Time (US & Canada)').strftime ("%m/%d/%y at %l:%M %p")
   # eventually change this method to get geolocator of the user and adjust to their time zone
  end

  def end_time
   time = start
   time.in_time_zone('Eastern Time (US & Canada)').strftime ("%m/%d/%y at %l:%M %p")
   # eventually change this method to get geolocator of the user and adjust to their time zone
  end

end
