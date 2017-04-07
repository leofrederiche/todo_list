Rails.application.routes.draw do
		namespace :api, defaults: {format: :json} do
			# resources :courses
			# resources :semesters
			# resources :activitys
		end
end
