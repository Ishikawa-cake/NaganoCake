Rails.application.routes.draw do

  root to: 'customer/homes#top'
<<<<<<< HEAD
  get '/about' => 'public/homes#about'
=======
   get '/about' => 'customer/homes#about'

  devise_for :admin, skip: [:registrations, :passwords],controllers: {
    sessions: "admin/sessions"
  }

  devise_for :customers, skip: [:passwords],  controllers: {
    registrations: "customer/registrations",
    sessions: 'customer/sessions'
  }

  namespace :customer do
    # get 'homes/about'
  end
>>>>>>> 981a7d4f2c7cc7b26f23324184658a93d40e54f9

  namespace :customer do
    get 'orders/new'
    get 'orders/log'
    get 'orders/index'
    get 'orders/thanx'
    get 'orders/show'
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
    get 'orders/index'
    get 'orders/show'
  end
  namespace :admin do
    get 'items/index'
    get 'items/new'
    get 'items/edit'
    get 'items/show'
    get 'items/top'
  end
  namespace :admin do
    get 'customers/index'
    get 'customers/edit'
    get 'customers/show'
  end
  devise_for :admin, skip: [:registrations, :passwords],controllers: {
    sessions: "admin/sessions"
  }

  devise_for :customers, skip: [:passwords],  controllers: {
    registrations: "customer/registrations",
    sessions: 'customer/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
