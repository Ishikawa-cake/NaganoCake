Rails.application.routes.draw do

  root to: 'customer/homes#top'
   get '/about' => 'customer/homes#about'
   

  devise_for :admin, skip: [:registrations, :passwords],controllers: {
    sessions: "admin/sessions"
  }

  devise_for :customers, skip: [:passwords],  controllers: {
    registrations: "customer/registrations",
    sessions: 'customer/sessions'
  }

  namespace :customer do
    resources :orders, only: [:new, :index, :edit, :create, :update, :destroy]
  end

  namespace :customer do
    get 'cart_items/index'
  end
  namespace :customer do
    get 'items/top'
    get 'items/about'
    get 'items/index'
    get 'items/show'
  end
  namespace :customer do
    get 'customers/edit'
    get 'customers/show'
  end
  namespace :admin do
    get 'items/index'
    get 'items/new'
    get 'items/edit'
    get 'items/show'
    get 'items/top'
  end
  namespace :admin do
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:index, :show, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
