module HomeUrlHelper

  #GET 
  def home_show_path(home)
    "/home/#{home.id}"
  end

end
