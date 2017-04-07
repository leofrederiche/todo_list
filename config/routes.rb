Rails.application.routes.draw do
  root "pages#home"

  resources :lists
end
