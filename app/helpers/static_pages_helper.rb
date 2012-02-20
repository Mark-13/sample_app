module StaticPagesHelper

  def link_make(caption, view_path, options = {})       

    if defined? @views_js then
      
      c_a = Rails.application.routes.recognize_path view_path
      c_a[:action].sub! '_',''                                   
                                    
      i = @views_js.index "#{c_a[:controller]}/#{c_a[:action]}"
      
      view_path = "#" + c_a[:action]
      options[:onclick] =  \
         "{$(\'ul#roundabout\').roundabout(\'animateToChild\', #{i})}".html_safe
          
    end 

    link_to caption, view_path, options

      
  end
  





end
