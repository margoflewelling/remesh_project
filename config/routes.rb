Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/', to: 'conversations#index'

get "/conversations/search", to: 'conversations#search'

resources :conversations, except: [:destroy, :edit, :update] do
  resources :messages, only: [:new, :create] do
    resources :thoughts, only: [:new, :create]
  end
end

end
