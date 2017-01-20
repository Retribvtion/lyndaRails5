Rails.application.routes.draw do

  root 'demo#index'

  resources :sections do
    member do
      get :delete
    end
  end
  resources :pages do
    member do
      get :delete
    end
  end

  resources :subjects do
    member do
      get :delete
    end
  end

  get 'demo/index'
  get 'demo/hello'

  get 'demo/other_hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
