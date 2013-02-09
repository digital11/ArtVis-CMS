Artvis::Application.routes.draw do

  match "/add_style" => "misc#add_style"
  match "/add_medium" => "misc#add_medium"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :accounts, :artists, :arts

  match "/my_account" => "accounts#mine"
end