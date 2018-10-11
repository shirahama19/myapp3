Rails.application.routes.draw do
  get 'admin' => "adminhome#top"

  get "admin/articles" => "adminarticle#index"
  get "admin/articles/new" => "adminarticle#new"

  get "admin/maxims" => "adminmaxim#index"
  get "admin/maxims/new" => "adminmaxim#new"


  get "admin/exhibitions" => "adminexhibition#index"
  get "admin/exhibitions/new" => "adminexhibition#new"

  get "admin/schools" => "adminschool#index"
  get "admin/schools/new" => "adminschool#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
