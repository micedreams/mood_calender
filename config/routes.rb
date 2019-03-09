Rails.application.routes.draw do
  resources :feels, except: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/weekly_view" => "feels#weekly_view", as: :weekly_view
end
