Rails.application.routes.draw do
  
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :public do
    get 'customer/show'
    get 'customer/edit'
  end
  # 顧客用
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

scope module: :public do
    
    
  root to: "homes#top"
    
  resources :arts ,   only: [:new, :index, :show, :edit, :create, :destroy, :update] do
    resources :art_comments, only: [:create, :destroy]
  end
  resources :customers,only: [:show, :edit, :update]
end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
