module ProjectUrlHelper

  #GET 
  def project_index_path
    "/projects"
  end

  #GET 
  def project_show_path(project)
    "/projects/#{project.id}"
  end

  #GET 
  def project_new_path
    "/projects/new"
  end

  #GET 
  def project_edit_path(project)
    "/projects/#{project.id}/edit"
  end

  #POST 
  def project_create_path
    "/projects"
  end

  #PUT 
  def project_update_path(project)
    "/projects/#{project.id}"
  end

  #DELETE 
  def project_destroy_path(project)
    "/projects/#{project.id}"
  end

end
