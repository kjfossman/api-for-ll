if Rails.env == 'production' 
    Rails.application.config.session_store :cookie_store, key: '_little-league-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_api-for-ll'
  end