Rails.application.routes.draw do
   resources :students, only: [:index, :show, :activate]

  # get 'students/:id', to: 'students#show'
  
   get 'students/:id/activate', to: 'students#activate', as:'activate-student'
end
