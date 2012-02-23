class StaticPagesController < ApplicationController

  layout "static"
    
  def home
   render "static_pages/_home.html.erb"
  end

  def help
   render "static_pages/_help.html.erb"
  end

  def about
   render "static_pages/_about.html.erb"
  end

  def contact
   render "static_pages/_contact.html.erb"
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
      "static_pages/home_js.html.erb", \
      :layout => "application"
  end
  

end
