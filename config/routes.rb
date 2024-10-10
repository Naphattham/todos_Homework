Rails.application.routes.draw do
  get '/home', to: 'todos#index'  # เส้นทางนี้จะชี้ไปที่ action index ใน TodosController

  resources :todos, only: [:index, :create, :destroy] do
    member do
      patch :complete
    end
  end
  
  root 'todos#index'
end
