Rails.application.routes.draw do
  resources :people do
    resources :interactions, only: [:new, :create, :edit, :update ]
  end
  resources :businesses do
    resources :interactions, only: [:new, :create, :edit, :update ]
  end
  root to: "people#index"
end
