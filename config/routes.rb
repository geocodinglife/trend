Rails.application.routes.draw do
  resources :page_ranks
  resources :links
  root 'welcome#index'
end
