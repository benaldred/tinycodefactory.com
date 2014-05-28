TinycodefactoryCom::Application.routes.draw do
  root :to => 'high_voltage/pages#show', :id => 'home'
  get "/expertise" => 'high_voltage/pages#show', :id => 'services'


  match '/projects/:id', :to => 'projects#show', :as => 'project', :constraints => {:id => /commentarybox|boxedup|qavs|sayt|chefnote/}
  post "/contact" => 'contacts#create'

  get '/sitemap' => 'sitemap#index'

end
