Rails.application.routes.draw do

  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :show, :new, :create] do
    collection do
      get '/category' => 'restaurants#category'
    end
    resources :reviews, only: [:new, :create]
  end

end
