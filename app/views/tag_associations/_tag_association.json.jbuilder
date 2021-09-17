json.extract! tag_association, :id, :created_at, :tagable_type, :tagable_id, :tag_id
json.url tag_association_url(tag_association, format: :json)
