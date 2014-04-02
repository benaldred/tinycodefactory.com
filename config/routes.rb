TinycodefactoryCom::Application.routes.draw do
  root :to => 'high_voltage/pages#show', :id => 'home'
  match '/projects/:id', :to => 'projects#show', :as => 'project', :constraints => {:id => /commentarybox|boxedup|qavs|sayt|chefnote/}

  post "/contact" => 'contacts#create'

  get '/sitemap.xml' => 'sitemap#index'
end
