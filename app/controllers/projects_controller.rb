class ProjectsController < ApplicationController
  layout "projects"
  caches_page :show

  def show
    render :template => "projects/#{params[:id]}"
  end
end
