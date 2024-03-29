Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "index", to: "static_pages#index"
  root "static_pages#index"
end
