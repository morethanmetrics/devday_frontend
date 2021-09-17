json.extract! project_tag_association, :id, :created_at, :tagable_type, :tagable_id, :tag_id
json.url project_tag_association_url(project_tag_association.tagable, project_tag_association, format: :json)
