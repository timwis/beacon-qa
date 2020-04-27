Rails.application.routes.draw do
  root 'call_logs#index'
  resources :call_logs, only: [:index, :show, :update]
end
