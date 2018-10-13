Rails.application.routes.draw do
  get 'admin' => "adminhome#top"

  get "admin/articles" => "adminarticle#index"
  get "admin/articles/new" => "adminarticle#new"
  get "admin/articles/:id" => "adminarticle#show"
  post "admin/articles/create" => "adminarticle#create"
  get "admin/articles/:id/edit" => "adminarticle#edit"
  patch "admin/articles/:id/update", to:"adminarticle#update", as: "admin_articles_update"
  post "admin/articles/:id/destroy" => "adminarticle#destroy"


  get "admin/maxims" => "adminmaxim#index"
  get "admin/maxims/new" => "adminmaxim#new"
  get "admin/maxims/:id" => "adminmaxim#show"


  get "admin/exhibitions" => "adminexhibition#index"
  get "admin/exhibitions/new" => "adminexhibition#new"
  get "admin/exhibitions/:id" => "adminexhibition#show"

  get "admin/schools" => "adminschool#index"
  get "admin/schools/new" => "adminschool#new"
  get "admin/schools/id" => "adminschool#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
