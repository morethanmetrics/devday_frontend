Rails.application.routes.draw do
  resources :tag_associations, :only => [:index] do
  end
  resources :tags, :only => [:index, :show, :new, :edit, :create, :update, :destroy] do
  end
  resources :projects, :only => [:index, :show, :new, :edit, :create, :update, :destroy] do
    resources :tag_associations, :only => [:index, :create, :destroy], :controller => :project_tag_associations
  end
  resource :home, :only => [:show], :controller => :home do
  end
  root 'home#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
