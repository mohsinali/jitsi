Rails.application.routes.draw do
  mount RailsEmailPreview::Engine, at: 'emails'
  root to: 'visitors#home'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :users ## Deprecate it.
  resources :admin
  resources :rooms
  resources :invitations
  
  resources :visitors do
    collection do
      get :home
      post :guest_login
    end
  end

end
