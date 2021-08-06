if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_api-for-ll', domain: 'api-for-ll-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_api-for-ll'
  end