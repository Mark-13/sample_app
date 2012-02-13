module ApplicationHelper


  # Returns the full title on a per-page basis.

  def full_title(page_title)       
    "Ruby on Rails Tutorial Sample App" +
       if not page_title.empty?  
        " | #{page_title}"  
       else
         ""
       end    
  end




end
