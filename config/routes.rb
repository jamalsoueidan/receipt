Receipt::Application.routes.draw do
  get "revenue/index"

  resources :purchases do
    member do
      post :sell
    end

    resources :expenses, :controller => "purchases/expenses"
  end

  resources :sales, :only => [:index, :show]
  resources :revenues do
    collection do
      get :list
    end
  end

  root :to => 'purchases#index'

  match ':controller(/:action(/:id))(.:format)'
end
