ForecastIO.configure do |configuration|
  configuration.api_key = Rails.application.secrets.secret_forecast
  configuration.default_params = {units: 'si'}
end