Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root to: 'pages#index'

  get '/report/:num', to: 'pages#report'
end
