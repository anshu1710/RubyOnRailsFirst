Rails.application.routes.draw do
  
  get 'admin/index'
  get "/pages/:page" => "pages#show"
  
  get 'sessions/create'
  get 'sessions/destroy'
  get '/users' => redirect('/login')
  resources :users
  
  
  get 'admin' => 'admin#index'
  get 'search' => 'search#index'
  get 'logout' => 'sessions#destroy'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
