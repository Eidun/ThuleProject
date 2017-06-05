Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'example' => 'example#index'
  get 'example/new' => 'example#new'
  post 'example/create' => 'example#create'

end
