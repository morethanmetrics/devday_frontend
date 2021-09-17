require "test_helper"

class TagsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @tag = Tag.create!(name: "t1")
  end

  test "index:" do
    get tags_path(
        ),
        :params => {
          :format => :json
        }
    assert_response(:success)
    response_body = JSON.parse(response.body)
    assert_equal(@tag.id, response_body.first["id"])
  end

  test "create:" do
    assert_difference("Tag.count", +1) do
      post tags_path(
           ),
           :params => {
             :format => :json,
             :tag => {
               :name => "t2"
             }
           }
      assert_response(:success)
      response_body = JSON.parse(response.body)
      assert_equal("t2", response_body["name"])
    end
  end

  test "destroy" do
    assert_difference("Tag.count", -1) do
      delete tag_path(
               @tag
             ),
             :params => {
               :format => :json
             }
      assert_response(204)
      assert_empty(response.body)
    end
  end

end
