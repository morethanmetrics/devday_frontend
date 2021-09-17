module Loaders::TagableTagAssociationLoader
  private

  def tagable_entity
    raise "define tagable_entity"
  end
  
  def load_tagable_tag_association
    @tag_association = tagable_entity.tag_associations.find_by!(id: params.require(:tag_association_id))
  end

  def load_tagable_tag_associations
    @tag_associations = tagable_entity.tag_associations
  end

  def load_tagable_tag_association_by_id
    @tag_association = tagable_entity.tag_associations.find_by!(id: params.require(:id))
  end

end
