Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  match '*path', :controller => 'application', :action => 'handle_options_request', :constraints => {:method => 'OPTIONS'}, via: [:options]
  
  namespace :admin do
     get '/' => 'dashboard#index'
     post 'admin_token' => 'admin_token#create'
     post 'find_admin' => 'admins#find'
     post 'student_token' => 'student_token#create'
     post 'find_student' => 'student#find'

     resources :students
     resources :cohorts
     resources :admins

   end

   namespace :student do
     get '/' => 'dashboards#index'
     post 'student_token' => 'student_token#create'
     post 'find_student' => 'student#find'

     resources :students
     resources :cohorts
     resources :admins
   end

end
