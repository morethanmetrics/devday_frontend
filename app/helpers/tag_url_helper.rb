module TagUrlHelper

  #GET 
  def tag_index_path
    "/tags"
  end

  #GET 
  def tag_show_path(tag)
    "/tags/#{tag.id}"
  end

  #GET 
  def tag_new_path
    "/tags/new"
  end

  #GET 
  def tag_edit_path(tag)
    "/tags/#{tag.id}/edit"
  end

  #POST 
  def tag_create_path
    "/tags"
  end

  #PUT 
  def tag_update_path(tag)
    "/tags/#{tag.id}"
  end

  #DELETE 
  def tag_destroy_path(tag)
    "/tags/#{tag.id}"
  end

end
