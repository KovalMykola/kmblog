Rails.application.routes.draw do
	scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
	  root 'posts#index'
	  resources :posts
	  resources :pictures, only: [:create, :destroy]
    resources :tags, only: [:show]
  end
end
