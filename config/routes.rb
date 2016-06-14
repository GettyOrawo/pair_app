Rails.application.routes.draw do
  root 'pair_static_pages#home'

  get 'pair_static_pages/help'

  get 'pair_static_pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
