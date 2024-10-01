Rails.application.routes.draw do
  get "sign-up", to: "users#new", as: :sign_up
  post "sign-up", to: "users#sign_up"
  get "new-password", to: "users#new_password", as: :new_password
  post "users", to: "users#create"
  get "dashboard", to: "users#show", as: :dashboard
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  root "pages#index"
end
