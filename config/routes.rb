Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'

  #root 'numbers#new'
  get 'numbers/new', as: 'user_root'
  get 'numbers/new', action: :new, controller: 'numbers'
  post 'numbers/new', action: :create, controller: 'numbers'
  get 'numbers/show/:id', action: :show, controller: 'numbers'

end
