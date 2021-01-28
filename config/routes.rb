Rails.application.routes.draw do
  devise_for :users
  resources :profiles
  resources :publications, except: :show
  resources :monetary_accounts, except: :show
  put '/toggle_profile', to: 'profiles#toggle_profile'
  root to: "home#index"
  get 'profiles/:id/appreciations', to: 'appreciations#select', :as => 'appreciations'
  get 'profiles/:id/appreciations/coffee', to: 'appreciations#coffee', :as => 'coffee'
  get 'profiles/:id/appreciations/hug', to: 'appreciations#hug', :as => 'hug'
  get 'profiles/:id/appreciations/thanks', to: 'appreciations#thanks', :as => 'thanks'
end
