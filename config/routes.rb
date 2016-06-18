Rails.application.routes.draw do
  root 'pair_static_pages#home'

  get 'help' => 'pair_static_pages#help'
  get 'about' => 'pair_static_pages#about'
  get 'contact' => 'pair_static_pages#contact'
  get 'faq' => 'pair_static_pages#FAQ'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
