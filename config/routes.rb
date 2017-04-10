Rails.application.routes.draw do
  root "pages#home"
  resources :lists

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
        resources :lists
    end
  end
end
