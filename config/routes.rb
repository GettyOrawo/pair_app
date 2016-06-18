Rails.application.routes.draw do
  root 'pair_static_pages#home'

  get 'pair_static_pages/help'

  get 'pair_static_pages/about'

  get 'pair_static_pages/contact'

  get 'pair_static_pages/FAQ'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
