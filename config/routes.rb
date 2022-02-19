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

  #管理者側のルートはurlにadminがつく
  namespace :admin do
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:index, :show, :update]
    resources :items
    resources :cart_items
  end

  #顧客側のルートはurlにcustomerがつかない
  scope module: :customer do
    resources :customers, only: [:show, :edit, :update] do

     resources :orders do
       collection do
         get :log
         get :thanx
       end
     end

     resources :order_items
     resources :cart_items, only: [:index]
    end
    resources :items, only: [:index, :show]
  end

end