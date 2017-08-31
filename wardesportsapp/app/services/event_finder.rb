class EventFinder
  def self.find_events(lat, long, miles=20)
    if lat && long
      Event.near([lat,long], miles)
    else
      Event.all
    end
  end
end
