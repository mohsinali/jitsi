Rails.application.routes.draw do
  root to: 'visitors#home'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :users
  resources :rooms
  resources :invitations
  
  resources :visitors do
    collection do
      get :home
      post :guest_login
    end
  end

end
