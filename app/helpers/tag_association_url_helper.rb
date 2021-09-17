module TagAssociationUrlHelper

  #GET 
  def tag_association_index_path
    "/tag_associations"
  end

  #GET 
  def tag_association_show_path(tag_association)
    "/tag_associations/#{tag_association.id}"
  end

end
