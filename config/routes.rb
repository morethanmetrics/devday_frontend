Rails.application.routes.draw do
  resources :projects, :only => [:index, :show, :new, :edit, :create, :update, :destroy] do
  end
  resource :home, :only => [:show], :controller => :home do
  end
  root 'home#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
