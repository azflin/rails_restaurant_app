Rails.application.routes.draw do
	resources :restaurants do
	   resources :reservations
	end

	resources :cuisine_types, only: [:index]

	resources :users, only: [:new, :create]
	get '/sign_up' => 'users#new'

	resources :sessions, only: [:create]
	get '/login' => 'sessions#new'
	delete '/logout' => 'sessions#destroy'

end
