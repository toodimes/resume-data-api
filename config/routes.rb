Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do 
      post "/login", to: "students#login"
      resources :students, except: [:new, :edit] do 
        resources :experiences, except: [:new, :edit]
        resources :educations, except: [:new, :edit]
        resources :skills, except: [:new, :edit]
        resources :capstones, except: [:new, :edit]
      end
    end
  end
end
