Rails.application.routes.draw do
  resources :orders
  resources :food_items
	get 'contact_us' => 'home#contact_us'
	get 'menu' => 'home#menu'
	get 'orders' => 'orders#new'
	get 'review' => 'home#review'
	root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
