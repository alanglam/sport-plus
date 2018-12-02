module ApplicationHelper
   def title
    content_tag(:title, @title || "Some default title")
  end

end
