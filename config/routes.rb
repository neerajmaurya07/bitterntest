Rails.application.routes.draw do
  resources :blogs do
  	resources :comments
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  authenticate :user do
	  scope "/admin" do
	    resources :categories, only: [:new, :create, :edit, :update, :destroy]
	  end
	end
  root 'blogs#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
