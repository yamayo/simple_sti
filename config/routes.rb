Rails.application.routes.draw do

  #resources :eagles, controller: :birds, type: 'Eagle', except: %i(new edit), defaults: {format: :json}
  #resources :sparrows, controller: :birds, type: 'Sparrow', except: %i(new edit), defaults: {format: :json}

  resources :footballers, controller: :players, type: 'Footballer', except: %i(new edit), defaults: {format: :json}
  resources :cricketers, controller: :players, type: 'Cricketer', except: %i(new edit), defaults: {format: :json}

end
