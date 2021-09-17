module Loaders::ProjectLoader # < ApplicationLoader
  private
  def load_project
    @project = Project.find_by!(:id => params.require(:project_id))
  end

  def load_projects
    @projects = Project.all
  end

  def load_project_by_id
    @project = Project.find_by!(id: params.require(:id))
  end

end
