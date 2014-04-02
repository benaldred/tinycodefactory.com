class SitemapController < ApplicationController
  respond_to :xml
  #caches_page :show

  def index
    #@routes = ["/", "/sign_up", "/sign_in"]
    #@urls = ["http://blog.chefnote.com/"]
  end
end
