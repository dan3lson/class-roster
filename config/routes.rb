Rails.application.routes.draw do
	root 'static_pages#home_guest'
	get "students" => "users#students"
end
