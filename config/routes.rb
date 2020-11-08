Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, except: :destroy

  delete '/students/:id', to: 'students#destroy', as: 'delete'

  get '/students/:id/activate', to: 'students#activate', as: 'activate-student'
end
