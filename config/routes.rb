Rails.application.routes.draw do

  resources :cars

  root to: redirect('/cars', status: 302)

end
