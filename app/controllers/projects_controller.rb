class ProjectsController < ApplicationController
  layout "projects"
  before_filter :set_http_cache_headers

  def show
    render :template => "projects/#{params[:id]}"
  end

  def set_http_cache_headers
    last_modified = File.mtime("#{Rails.root}/app/views/projects/#{params[:id]}.html.erb")
    fresh_when last_modified: last_modified , public: true, etag: last_modified
  end
end
