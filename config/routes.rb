Rails.application.routes.draw do
  get 'cities/search', to: 'cities#search'
  root 'cities#index'
end
