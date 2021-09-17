module TagAssociationUrlHelper

  #GET 
  def tag_association_index_path
    "/tag_associations"
  end

  #GET 
  def tag_association_show_path(tag_association)
    "/tag_associations/#{tag_association.id}"
  end

  #GET 
  def tag_association_new_path
    "/tag_associations/new"
  end

  #GET 
  def tag_association_edit_path(tag_association)
    "/tag_associations/#{tag_association.id}/edit"
  end

  #POST 
  def tag_association_create_path
    "/tag_associations"
  end

  #PUT 
  def tag_association_update_path(tag_association)
    "/tag_associations/#{tag_association.id}"
  end

  #DELETE 
  def tag_association_destroy_path(tag_association)
    "/tag_associations/#{tag_association.id}"
  end

end
