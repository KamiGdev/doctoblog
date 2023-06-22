Rails.application.routes.draw do
  mount Avo::Engine, at: Avo.configuration.root_path
  devise_for :users
  resources :blog_posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  # /blog_posts/1/comments/4
  resources :blog_posts do
    resources :comments, only: [:show, :create, :update, :destroy]
  end



  root to: "blog_posts#index"

end



