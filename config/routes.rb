Rails.application.routes.draw do
  resources :events
  devise_for :users

    devise_scope :user do
      get '/users/sign_out' => 'devise/sessions#destroy' # log outのバグを修正するためのコード
    end

  root 'user#index'
  get "user/:id" => "user#show", as: :mypages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
