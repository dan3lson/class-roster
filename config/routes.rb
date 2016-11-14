Rails.application.routes.draw do
	root "static_pages#home_guest"
	get "about" => "static_pages#about"
	get "students" => "users#students"
	get "practice" => "practices#play"
	resources :orgs
	resources :sections
	resource :stat, only: [:update]
end
