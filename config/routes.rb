Rails.application.routes.draw do
  resources :players
  root :to => redirect('/players')
end
