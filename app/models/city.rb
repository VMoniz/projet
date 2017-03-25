class City < ActiveRecord::Base
  before_validation :geocode
  
  private 
  def geocode
    if attribute_present?("name")
       places = Nominatim.search(self.name).limit(1)
       place = places.first
      if place
       self.lattitude = place.lat
       self.longitude = place.lon
      end
    end
  end
  

  
end