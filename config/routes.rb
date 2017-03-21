Rails.application.routes.draw do
  get 'schedule/view'

	devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)
	root 'checkin#index'
	get '/checkin', to:'checkin#index' 
	get '/schedule', to: 'schedule#view'
	resources :terms
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
