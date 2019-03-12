Rails.application.routes.draw do
    get '/check_password' => 'password#check'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
