Rails.application.routes.draw do
  resources :cocktails do
    root to: "cocktails#index"
  end
end
