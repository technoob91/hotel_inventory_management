Rails.application.routes.draw do
  
  post 'booking/book'
  get 'room_types/index'
  get 'room_types/show'
  resources :properties do
    resources :rooms
    resources :room_types do
      get 'availability', :on => :member
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
