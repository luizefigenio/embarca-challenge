Rails.application.routes.draw do
  get 'cities', to: 'cities#search'
  root 'cities#index'
end
