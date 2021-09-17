module Loaders::TagAssociationLoader # < ApplicationLoader
  private
  def load_tag_association
    @tag_association = @tag.tag_associations.find_by!(id: params.require(:tag_association_id))
  end

  def load_tag_associations
    @tag_associations = @tag.tag_associations
  end

  def load_tag_association_by_id
    @tag_association = @tag.tag_associations.find_by!(id: params.require(:id))
  end

end
