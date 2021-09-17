module Loaders::TagLoader # < ApplicationLoader
  private
  def load_tag
    @tag = Tag.find_by!(:id => params.require(:tag_id))
  end

  def load_tags
    @tags = Tag.all
  end

  def load_tag_by_id
    @tag = Tag.find_by!(id: params.require(:id))
  end

end
