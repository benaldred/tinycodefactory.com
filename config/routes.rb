TinycodefactoryCom::Application.routes.draw do
  root :to => "pages#index"
  match '/projects/:id', :to => 'projects#show', :as => 'project', :constraints => {:id => /boxedup|qavs|sayt|chefnote/}
end
