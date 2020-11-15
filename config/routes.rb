Rails.application.routes.draw do
  # resources :students, only: [:index, :show]
  resources :students, only: [:index, :show]
  get '/students/activate', to: 'students#show', as: 'activate_student'

  # resources , to: redirect(:show)
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
