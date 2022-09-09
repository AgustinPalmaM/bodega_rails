Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "dashboard#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :products do
    member do
      get :new_movement
    end
  end

end
