Rails.application.routes.draw do
  resources :players, :matches, :match_edits
  root :to => redirect('/players')
end
