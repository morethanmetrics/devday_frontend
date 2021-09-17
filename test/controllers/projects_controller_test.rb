require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @project = Project.create!(title: "p1")
  end

  test "index:" do
    get projects_path(
        ),
        :params => {
          :format => :json
        }
    assert_response(:success)
    response_body = JSON.parse(response.body)
    assert_equal(@project.id, response_body.first["id"])
  end

  test "create:" do
    assert_difference("Project.count", +1) do
      post projects_path(
           ),
           :params => {
             :format => :json,
             :title => "p2"
           }
      assert_response(:success)
      response_body = JSON.parse(response.body)
      assert_equal("p2", response_body["title"])
    end
  end

  test "destroy" do
    assert_difference("Project.count", -1) do
      delete project_path(
               @project
             ),
             :params => {
               :format => :json
             }
      assert_response(204)
      assert_empty(response.body)
    end
  end

end
