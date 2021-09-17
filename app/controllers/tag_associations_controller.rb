class TagAssociationsController < ApplicationController
  before_action :set_tag_association, only: [:show, :edit, :update, :destroy]

  #parent: tag

  #include ::Loaders::TagLoader

  # GET /tag_associations
  # GET /tag_associations.json
  def index
    @tag_associations = TagAssociation.all
  end

  # GET /tag_associations/1
  # GET /tag_associations/1.json
  def show
  end






  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_association
      @tag_association = TagAssociation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tag_association_params
      params.require(:tag_association).permit(:tagable_id, :tag_id)
    end
end
