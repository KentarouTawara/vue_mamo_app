Rails.application.routes.draw do
  get 'home', to: 'memos#index'

  namespace :api, format: 'json' do
    resources :memos, only: [:index, :create]
  end
end
