Rails.application.routes.draw do

  resources :quests do
    resources :points
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'example#index'
  get 'example' => 'example#index'
  get 'example/new' => 'example#new'
  post 'example/create' => 'example#create'
  get 'example/safe_super_delete' => 'example#incredible_delete'

end
