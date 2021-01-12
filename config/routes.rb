Rails.application.routes.draw do
  get 'rooms/show'
  resources :staffs
  root "staffs#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
