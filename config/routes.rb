Rails.application.routes.draw do
  root 'welcome#index'

  namespace :api, defaults: { format: :json } do
    get 'posts' => 'posts#index'
    get 'posts/:id' => 'posts#show'
    post 'posts' => 'posts#create'
  end
end
