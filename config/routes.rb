Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match '*path', :controller => 'application', :action => 'handle_options_request', :constraints => {:method => 'OPTIONS'}, via: [:options]

  namespace :admin do
     get '/' => 'dashboard#index'
     post 'admin_token' => 'admin_token#create'
     get 'admin/current' => 'admins#current'
     post 'student_token' => 'student_token#create'


     resources :students
     resources :cohorts
     resources :admins
     resources :assignemnts
     resources :events
     resources :contacts
     resources :companies


   end

   namespace :student do
     get '/' => 'dashboard#index'
     post 'student_token' => 'student_token#create'
     get 'student/current' => 'students#current'
    post 'find_student' => 'student#find'

     resources :students
     resources :cohorts, only: %i(show)
     resources :events, only: %i(show)
     resources :assignments, only: %i(show)

   end

end
