module ApplicationHelper


  # Returns the full title on a per-page basis.

  def full_title(page_title)       
    "Sample App" +
       if not page_title.empty?  
        " | #{page_title}"  
       else
         ""
       end    
  end

  def logo
    image_tag("logo.png", alt: "Sample App", class: "round")
  end



end
