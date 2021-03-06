Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    resources :categories
    mount VandalUi::Engine, at: '/vandal'
    # your routes go here
    api_guard_routes for: 'users'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
