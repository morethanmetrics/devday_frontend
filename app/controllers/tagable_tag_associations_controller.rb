class TagableTagAssociationsController < ApplicationController
  include Loaders::ProjectLoader
  include Loaders::TagLoader
  include Loaders::TagableTagAssociationLoader
  
  before_action :load_project
  before_action :load_tagable
  before_action :load_tagable_tag_associations, only: [:index]
  before_action :load_tagable_tag_association_by_id, only: [:destroy]
  before_action :load_tag, only: [:create]

  def create
    @tag_association = tagable_entity.tag_associations.create!(:tag_id => @tag.id)
  end

  def index
  end

  def destroy
    @tag_association.destroy!
    render :json => {}, :status => 204
  end

  private

  def load_tagable
  end

end
