require "test_helper"

class ProjectTagAssociationsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @project = Project.create!(title: "p1")
    @tag = Tag.create!(name: "t1")
  end

  test "index:" do
    @tag_association = TagAssociation.create!(tagable: @project, tag: @tag)
    get project_tag_associations_path(
          @project
        ),
        :params => {
          :format => :json
        }
    assert_response(:success)
    response_body = JSON.parse(response.body)
    assert_equal(@tag.id, response_body.first["tag_id"])
    assert_equal(@tag_association.id, response_body.first["id"])
  end

  test "create: should create a tag_association" do
    assert_difference("TagAssociation.count", +1) do
      assert_difference("@project.tags.count", +1) do
        post project_tag_associations_path(
               @project
             ),
             :params => {
               :format => :json,
               :tag_id => @tag.id
             }
        assert_response(:success)
        response_body = JSON.parse(response.body)
        assert_equal(@tag.id, response_body["tag_id"])
      end
    end
  end

  test "destroy: should destroy a tag_association" do
    @tag_association = TagAssociation.create(tagable: @project, tag: @tag)
    assert_difference("Tag.count", 0) do
      assert_difference("TagAssociation.count", -1) do
        delete project_tag_association_path(
                 @project,
                 @tag_association
               )
        assert_response(204)
        assert_empty(response.body)
      end
    end
  end

end
