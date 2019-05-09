Rails.application.routes.draw do
  get 'provides/index'

  resources :provides do
    resources :comments
  end

  root 'provides#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
