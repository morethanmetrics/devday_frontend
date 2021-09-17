class TagAssociation < ApplicationRecord
  TAGABLE_ENTITIES=%w(Project)

  belongs_to :tagable, polymorphic: true
  belongs_to :tag

  validates :tag, uniqueness: { scope: :tagable }
  validates :tagable_type, inclusion: { in: TAGABLE_ENTITIES }
  
end
