Rails.application.routes.draw do
  root 'home#index'
  get '/:name', to: 'home#index'
end
