require "test_helper"

class TagAssociationsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @project = Project.create!(title: "p1")
    @tag = Tag.create!(name: "t1")
    @tag_association = TagAssociation.create!(tag: @tag, :tagable => @project)
  end

  test "index:" do
    get tag_associations_path(
        ),
        :params => {
          :format => :json
        }
    assert_response(:success)
    response_body = JSON.parse(response.body)
    assert_equal(@tag_association.id, response_body.first["id"])
    assert_equal(@project.id, response_body.first["tagable_id"])
    assert_equal(@tag.id, response_body.first["tag_id"])
  end


end
