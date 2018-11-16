Rails.application.routes.draw do
  root 'pages#index'

  namespace :api, defaults: { format: 'jason' } do
    resources :posts, only: [:index, :create]
  end

  # IMPORTANT #
  # This 'match' must be the *last* route in routes.rb
  match '*path', to: 'pages#index', via: :all
end
