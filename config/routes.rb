Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :blog_pests

 #get "blog_pests/new", to: "blog_pests#new", as: :new_blog_pest
 #get "/blog_pests/:id/edit", to: "blog_pests#edit", as: :edit_blog_pest
 #patch "/blog_pests/:id", to: "blog_pests#update"
 #delete "/blog_pests/:id", to: "blog_pests#destroy"
 #get "/blog_pests/:id", to: "blog_pests#show", as: :blog_pest
 #post "/blog_pests", to: "blog_pests#create", as: :blog_pests
 
  # Defines the root path route ("/")
 root "blog_pests#index"

end

