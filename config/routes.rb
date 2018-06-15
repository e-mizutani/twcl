Rails.application.routes.draw do
  root to: 'twcls#index'
  resources :twcls do
    collection do
      post :confirm
    end
  end
end