Rails.application.routes.draw do
  root to: "pages#home"
  get "about", to: "pages#about"
  get "sign_up", to: "registrations#new"
  post 'sign_up', to: "registrations#create"
end
