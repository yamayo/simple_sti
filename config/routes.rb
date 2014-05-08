Rails.application.routes.draw do

  resources :birds, only: %i(index show create update), defaults: {format: :json}
  resources :eagles, controller: :birds, type: 'Eagle', only: %i(index show create update), defaults: {format: :json}
  resources :sparrows, controller: :birds, type: 'Sparrow', only: %i(index show create update), defaults: {format: :json}

end
