if Rails.env == 'production' 
    Rails.application.config.session_store :cookie_store, key: '_little-league-api', domain: "little-league-api.herokuapp.com"
  else
    Rails.application.config.session_store :cookie_store, key: '_api-for-ll'
  end