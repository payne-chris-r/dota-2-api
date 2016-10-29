Rails.application.routes.draw do
  resources :admins, except: [:new, :edit]
  resources :characters, except: [:new, :edit]
  resources :heroes, except: [:new, :edit]
  resources :players, except: [:new, :edit]

  # Profiles Custom Routes
  # patch '/profiles' => 'profiles#update'
  # get '/profiles' => 'profiles#show'

  resources :profiles, except: [:new, :edit]

  resources :games, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
