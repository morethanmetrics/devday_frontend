class ProjectTagAssociationsController < TagableTagAssociationsController
  private

  def tagable_entity
    @project
  end

end
