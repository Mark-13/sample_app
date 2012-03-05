class StaticPagesController < ApplicationController

  layout "static"
    
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
   render "static_pages/_home"
  end

  def help
   render "static_pages/_help"
  end

  def about
   render "static_pages/_about"
  end

  def contact
   render "static_pages/_contact"
  end


  def home_js

    @user = User.new
    
    @views_js = \
      Dir.glob("app/views/users/_*") +\
      Dir.glob("app/views/static_pages/_*")
    
    r = /([^\/]+\/)_([^\/\.]+?)\./
        
    @views_js.map! do |p|
      m = r.match(p)
      m[1]+m[2]
    end
        
    render  \
      "static_pages/home_js", \
      :layout => "application"
  end
  

end
