Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: redirect("/#{I18n.default_locale}/articles")

  scope "/:locale" do
    resources :articles
    resources :projects
    get "/about", to: "about#index"
  end
end
