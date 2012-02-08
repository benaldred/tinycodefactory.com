class ProjectsController < ApplicationController
  layout "projects"
  
  def show
    render :template => "projects/#{params[:id]}"
  end
end
