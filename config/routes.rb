Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "departmentals#index"
  resources :departmentals do
    resources :items
  end

  scope "items/:item_id", as: "item" do
    resources :comments, only: [:new, :create, :show]
  end
  scope "items/:item_id", as: "item" do
    resources :ratings, only: [:new, :create]
  end
end
