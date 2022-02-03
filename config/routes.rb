Rails.application.routes.draw do
  root "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources defines the CRUD operation for in this
  # case articles
  resources :articles do 
    # as with articles controller we need 
    # to add a route so that Rails knows where
    # we would like to navigate to see 
    # comments.
    resources :comments
  end

end
