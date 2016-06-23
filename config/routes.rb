Rails.application.routes.draw do

  resources :posts
  root 'subreddits#index'

  resources :users
  resources :subreddits do
    resources :comments, shallow: true do
      resources :votes, shallow: true
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
