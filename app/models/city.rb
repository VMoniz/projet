class City < ActiveRecord::Base
  before_validation :geocode
  
  def meteo
    forecast = ForecastIO.forecast(self.lattitude, self.longitude)
    todayForecast = forecast.currently.summary
  end
  
  def degre
    forecast = ForecastIO.forecast(self.lattitude, self.longitude)
    weather_io = toCelsus(forecast.currently.temperature)
    weather_io = weather_io.round(2)
  end 
  
  def toCelsus(fahrenheitTemperature)
      if fahrenheitTemperature
        return (fahrenheitTemperature - 32.0) * 5.0 / 9.0
      else
        return nil
      end
  end
  
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

