Rails.application.routes.draw do
  devise_for :users

  resources :passwords do
    resources :shares
  end

  root "passwords#index"
end
