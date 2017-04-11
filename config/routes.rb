Rails.application.routes.draw do
  root 'pages#home'
  get 'lists', to: 'lists#index', as: :lists_path

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
        resources :lists
    end
  end
end
