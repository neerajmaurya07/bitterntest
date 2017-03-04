Rails.application.routes.draw do
  resources :blogs do
  	resources :comments
  end
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope "/admin" do
    resources :categories, only: [:new, :create, :edit, :update, :destroy]
  end
	
  root 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
