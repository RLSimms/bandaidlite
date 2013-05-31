module ApplicationHelper

  def navbar_class
    if signed_in?
      class_name = 'navbar-logged-in'
    else
      class_name = 'navbar-logged-out'
    end
    class_name
  end

end
