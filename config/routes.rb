Rails.application.routes.draw do
root 'numbers#new'
get 'numbers/new', action: :new , controller: 'numbers'
post 'numbers/new', action: :create , controller: 'numbers'
get 'numbers/show/:id', action: :show , controller: 'numbers'

end
